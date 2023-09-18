import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:towfix/core/data/dtos/directions_model/directions_model.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';
import 'package:towfix/core/data/dtos/geocoding_model/geocoding_model.dart';
import 'package:towfix/core/data/dtos/places/places.dart';
import 'package:towfix/core/providers/common.dart';
import 'package:towfix/core/utils/success_response.dart';
import 'package:towfix/src/map/data/api_service/map_service_api.dart';

import '../../../core/application/device/network_info.dart';

abstract class MapServiceRepository {
  /// search places
  Future<Either<Failure, Places>> searchPlaces(String query);

  /// geocoding by place id
  Future<Either<Failure, GeocodingModel>> getGeocodingByPlaceID(String query);

  /// get directions
  Future<Either<Failure, DirectionsModel>> getDirections(
      {required LatLng origin, required LatLng destination});
}

final mapServiceRepositoryImplProvider =
    Provider<MapServicesRepositoryImpl>((ref) {
  final networkInfo = ref.read(networkInfoProvider);
  final apiService = ref.read(mapServiceApiProvider);

  return MapServicesRepositoryImpl(
      networkInfo: networkInfo, apiService: apiService);
});

class MapServicesRepositoryImpl extends MapServiceRepository {
  MapServicesRepositoryImpl(
      {required this.networkInfo, required this.apiService});

  final NetworkInfo networkInfo;

  final MapServiceApi apiService;

  Future<Either<Failure, Response>> execute(Future<Response> asyncCall) async {
    // * check for internet connectivity
    if (!await networkInfo.hasConnection) {
      return const Left(Failure.network(message: 'No internet connection.'));
    }
    // *

    try {
      final response = await asyncCall;
      if (response.isSuccessful) return Right(response);

      final statusCode =
          response.statusCode != null ? response.statusCode.toString() : "";
      final statusMessage = response.statusMessage ?? "";

      return Left(
        Failure.server(
          status: statusCode,
          message: statusMessage,
        ),
      );
    } catch (e) {
      // *
      return const Left(
          Failure.exception(message: "Oooops, Something went wrong."));
    }
  }

  @override
  Future<Either<Failure, Places>> searchPlaces(String query) async {
    try {
      final result = await execute(apiService.searchPlaces(query));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = Places.fromJson(response.data);
          log('-------------------\nPlaces $right');
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving places search results'));
    }
  }

  @override
  Future<Either<Failure, GeocodingModel>> getGeocodingByPlaceID(
      String placeID) async {
    try {
      final result = await execute(apiService.getGeocodeByPlaceID(placeID));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = GeocodingModel.fromJson(response.data);
          log('-------------------\Geocoding $right');
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving places search results'));
    }
  }

  @override
  Future<Either<Failure, DirectionsModel>> getDirections(
      {required LatLng origin, required LatLng destination}) async {
    try {
      final result = await execute(
          apiService.getDirections(destination: destination, origin: origin));

      return result.fold(
        (failure) {
          return Left(failure);
        },
        (response) async {
          final right = DirectionsModel.fromJson(response.data);
          log('-------------------\nDirections $right');
          return Right(right);
        },
      );
    } catch (e) {
      return const Left(
          Failure.exception(message: 'Error retrieving places search results'));
    }
  }
}
