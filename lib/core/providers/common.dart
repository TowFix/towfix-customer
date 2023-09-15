import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';
import 'package:towfix/core/data/dtos/service_request/service_request.dart';
import 'package:towfix/src/towfix_services/data/data_sources/towfix_service_dao_impl.dart';
import 'package:towfix/src/towfix_services/data/repository/towfix_service_dao.dart';

import '../application/cache/cache_service.dart';
import '../application/device/network_info.dart';
import '../data/data_sources/auth_repository.dart';
import '../data/data_sources/store_repository.dart';
import '../data/dtos/vehicle/vehicle.dart';

part 'common.g.dart';

/// firestore provider
final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final connectionCheckerProvider = Provider((ref) => InternetConnection());

/// firebase auth provider
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) {
    final connectionChecker = ref.watch(connectionCheckerProvider);
    return NetworkInfoImpl(connectionChecker: connectionChecker);
  },
);

///Authrepository provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.read(firebaseAuthProvider));
});

/// Database repository provider
final databaseRepositoryProvider = Provider<DatabaseRepository>((ref) {
  return FirestoreDatabaseRepositoryImpl(
      firestore: ref.read(firestoreProvider),
      firebaseStorage: ref.read(firebaseStorageProvider));
});

// cache service provider
final cacheServiceProvider = Provider<CacheService>((ref) {
  return HiveCacheServiceImpl();
});

final firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
  return FirebaseStorage.instance;
});

/// login state provider
final loginStateProvider = StateProvider<bool>((ref) {
  return false;
});

@riverpod
Stream<Either<Failure, List<ServiceRequest>>> serviceRequest(Ref ref) async* {
  final dbRepo = ref.watch(databaseRepositoryProvider);

  final result = dbRepo.getServiceRequests();

  yield* result;
}

@riverpod
Stream<List<Vehicle>> vehicles(VehiclesRef ref) async* {
  final dbProvider = ref.watch(databaseRepositoryProvider);
  final cacheService = ref.watch(cacheServiceProvider);
  final result = await dbProvider.getUserVehicles(cacheService.profile);

  yield* result.fold((l) async* {
    yield <Vehicle>[];
  }, (r) async* {
    yield* r;
  });
}

// final hasOnboardedShopProvider = StateProvider<bool>((ref) {
//   final shopFutr = ref.read(shopProvider);
//   var hasOnboarded;
//   // shopFutr.whenData((shopResult) {
//   //   shopResult.fold<bool>((l) {
//   //     hasOnboarded = false;
//   //     return hasOnboarded!;
//   //   }, (r) {
//   //     if (r == Shop.initial()) {
//   //       hasOnboarded = false;
//   //       return hasOnboarded!;
//   //     }
//   //     hasOnboarded = true;
//   //     return hasOnboarded!;
//   //   });
//   // });

//   Future(() async {
//     final result = await ref
//         .read(databaseRepositoryProvider)
//         .getShopByProfileId(ref.watch(firebaseAuthProvider).currentUser!.uid);

//     result.fold((l) {
//       hasOnboarded = false;
//     }, (r) {
//       if (r == Shop.initial()) {
//         hasOnboarded = false;
//       }
//       hasOnboarded = true;
//     });
//   });

//   return hasOnboarded;
// });

final towfixDaoProvider = Provider<TowfixServiceDaoRepository>((ref) {
  final networkInfo = ref.watch(networkInfoProvider);
  final cacheService = ref.watch(cacheServiceProvider);

  return TowfixServiceDaoRepositoryImpl(
      networkInfo: networkInfo, cacheService: cacheService);
});
