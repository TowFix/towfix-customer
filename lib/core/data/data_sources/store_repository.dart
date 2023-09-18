import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';

import '../dtos/failure/failure.dart';
import '../dtos/profile/profile.dart';
import '../dtos/service_request/service_request.dart';

abstract class DatabaseRepository {
  //* retrieve logged users profile
  Future<Either<Failure, Profile>> retrieveProfile(String id);

  //* save user to remote database
  Future<Either<Failure, Profile>> saveProfile(Profile profile);

  //* update user
  Future<Either<Failure, Profile>> updateProfile(Profile profile);

  /// * upoad image to firebase
  Future<Either<Failure, String>> uploadImage(String path);

  ///* get service requests
  Stream<Either<Failure, List<ServiceRequest>>> getServiceRequests();

  //* get request details
  // [id] used to fetch request details
  //[getServiceRequestDetails] gets details on a particular service
  Stream<Either<Failure, ServiceRequest>> getServiceRequestDetails(String id);

  // * create service request
  Future<Either<Failure, ServiceRequest>> createServiceRequest(
      ServiceRequest request);

  ///* create vehicle
  Future<Either<Failure, Vehicle>> createVehicle(Vehicle vehicle);

  ///* get list of vehicles
  Future<Either<Failure, Stream<List<Vehicle>>>> getUserVehicles(Profile user);

  ///* delete vehicle
  Future<Either<Failure, Vehicle>> deleteVehicle(Vehicle vehicle);
}

class FirestoreDatabaseRepositoryImpl implements DatabaseRepository {
  const FirestoreDatabaseRepositoryImpl(
      {required this.firestore, required this.firebaseStorage});

  final FirebaseFirestore firestore;

  final FirebaseStorage firebaseStorage;

  final profileCollectionPath = 'profiles';
  final serviceRequestCollectionPath = 'service-requests';
  final vehicletCollectionPath = 'vehicles';

  @override
  Future<Either<Failure, Profile>> retrieveProfile(String id) async {
    try {
      final result =
          await firestore.collection(profileCollectionPath).doc(id).get();
      return Right(Profile.fromJson(result.data()!));
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'RETRIEVEPROFILE Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error retrieving profile info'));
    } catch (e) {
      log('$e', error: e, name: 'RETRIEVEPROFILE');

      return const Left(
          Failure.exception(message: 'Error retrieving profile info'));
    }
  }

  @override
  Future<Either<Failure, Profile>> saveProfile(Profile profile) async {
    try {
      final date = {'date': FieldValue.serverTimestamp()};

      await firestore
          .collection(profileCollectionPath)
          .doc(profile.id)
          .set(profile.toJson()..addAll(date));
      return Right(Profile.fromJson(profile.toJson()..addAll(date)));
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'SAVEPROFILE Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error retrieving profile info'));
    } catch (e) {
      log('$e', error: e, name: 'SAVEPROFILE');

      return const Left(
          Failure.exception(message: 'Error SAVEPROFILE profile info'));
    }
  }

  @override
  Future<Either<Failure, Profile>> updateProfile(Profile profile) async {
    try {
      await firestore
          .collection(profileCollectionPath)
          .doc(profile.id)
          .update(profile.toJson());
      return Right(Profile.fromJson(profile.toJson()));
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'updateProfile Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error retrieving profile info'));
    } catch (e) {
      log('$e', error: e, name: 'updateProfile');

      return const Left(
          Failure.exception(message: 'Error updateProfile profile info'));
    }
  }

  @override
  Future<Either<Failure, String>> uploadImage(String path) async {
    try {
      File file = File(path);
      final breaks = path.split('/');
      final filename = breaks.last;
      final uploadTask =
          await firebaseStorage.ref().child(filename).putFile(file);

      log('UPLOAD TASK: $uploadTask');
      log('------------------\nUPLOAD TASK Files transfered: ${uploadTask.bytesTransferred}/${uploadTask.totalBytes}');
      final result = await uploadTask.ref.getDownloadURL();
      return Right(result);
    } on firebase_core.FirebaseException catch (e) {
      return Left(Failure.exception(
          message: e.message ?? 'Ooops, something went wrong.'));
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Ooops, something went wrong.'));
    }
  }

  @override
  Stream<Either<Failure, ServiceRequest>> getServiceRequestDetails(String id) {
    // TODO: implement getServiceRequestDetails
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<ServiceRequest>>> getServiceRequests() async* {
    try {
      // todo: get all request
      final result = await firestore
          .collection(serviceRequestCollectionPath)
          // .where('status', isEqualTo: RequestStatus.active)
          .doc()
          .snapshots()
          .map((event) => ServiceRequest.fromJson(event.data()!))
          .toList();
      //todo: sort by proximity radius

      //todo: return requests in proximity

      yield Right(result);
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'updateProfile Firebase EXCEPTION');

      yield const Left(
          Failure.exception(message: 'Error retrieving profile info'));
    } catch (e) {
      log('$e', error: e, name: 'getServiceRequestDetails');

      yield const Left(
          Failure.exception(message: 'Error getServiceRequestDetails  info'));
    }
  }

  @override
  Future<Either<Failure, Vehicle>> createVehicle(Vehicle vehicle) async {
    try {
      final uid = firestore.collection(vehicletCollectionPath).doc().id;
      // final map = {'id': uid, 'createdAt': FieldValue.serverTimestamp()};
      final data = {
        'id': uid,
        'brand': vehicle.brand,
        'model': vehicle.model,
        'color': vehicle.color,
        'numberPlate': vehicle.numberPlate,
        'extraInfo': vehicle.extraInfo,
        'user': vehicle.user.toJson(),
        'image': vehicle.image,
        'date': FieldValue.serverTimestamp()
      };
      await firestore.collection(vehicletCollectionPath).doc(uid).set(data);

      // final toJson = vehicle.toJson()..addAll(map);

      return Right(Vehicle.fromJson(data));
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'createVehicle Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error creating vehicle info'));
    } catch (e) {
      log('$e', error: e, name: 'createVehicle');

      return const Left(
          Failure.exception(message: 'Error updateProfile profile info'));
    }
  }

  @override
  Future<Either<Failure, Vehicle>> deleteVehicle(Vehicle vehicle) async {
    try {
      await FirebaseFirestore.instance
          .collection(vehicletCollectionPath)
          .doc(vehicle.id)
          .delete();

      return Right(vehicle);
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'deleteVehicle Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error creating vehicle info'));
    } catch (e) {
      log('$e', error: e, name: 'createVehicle');

      return const Left(
          Failure.exception(message: 'Error deleteVehicle Vehicle info'));
    }
  }

  @override
  Future<Either<Failure, Stream<List<Vehicle>>>> getUserVehicles(
      Profile user) async {
    try {
      final result = firestore
          .collection(vehicletCollectionPath)
          .where('user.id', isEqualTo: user.id)
          .snapshots()
          .map((event) => event.docs
              .map<Vehicle>((e) => Vehicle.fromJson(e.data()))
              .toList());

      return Right(result);
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'getUserVehicles Firebase EXCEPTION');

      return const Left(
          Failure.exception(message: 'Error getting vehicle info'));
    } catch (e) {
      log('$e', error: e, name: 'createVehicle');

      return const Left(
          Failure.exception(message: 'Ooops, something went wrong'));
    }
  }

  @override
  Future<Either<Failure, ServiceRequest>> createServiceRequest(
      ServiceRequest request) async {
    try {
      final uid = firestore.collection(vehicletCollectionPath).doc().id;
      // final map = {'id': uid, 'createdAt': FieldValue.serverTimestamp()};
      final data = {
        'id': uid,
        'requester': request.requester.toJson(),
        'servicer': request.servicer.toJson(),
        'serviceType': request.serviceType.name,
        'amount': request.amount,
        'status': request.status.name,
        'origin': request.origin.toJson(),
        'destination': request.destination.toJson(),
        'requestDate': Timestamp.fromDate(request.requestDate),
        'date': FieldValue.serverTimestamp()
      };
      log('createServiceRequest : \n $data');
      await firestore
          .collection(serviceRequestCollectionPath)
          .doc(uid)
          .set(data);

      // final toJson = vehicle.toJson()..addAll(map);

      return Right(ServiceRequest.fromJson(data));
    } on FirebaseException catch (e) {
      log('$e', error: e, name: 'createServiceRequest Firebase EXCEPTION');

      return Left(Failure.exception(message: '${e.message}'));
    } catch (e) {
      log('$e', error: e, name: 'createServiceRequest');

      return const Left(Failure.exception(
          message: 'Ooops, something went wrong, please try again later.'));
    }
  }
}
