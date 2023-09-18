import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';
import 'package:towfix/core/data/dtos/places/places.dart';
import 'package:towfix/core/data/dtos/service_request/service_request.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';
import 'package:towfix/src/map/data/map_service_repository.dart';
import 'package:towfix/src/map/presentation/controller/map_service_state.dart';

import '../../../../core/data/dtos/address/address.dart';

part 'search_controller.g.dart';

@Riverpod(keepAlive: true)
Future<Either<Failure, Places>> searchPlaces(
    SearchPlacesRef ref, String query) {
  final searchRepo = ref.read(mapServiceRepositoryImplProvider);
  return searchRepo.searchPlaces(query);
}

enum destinations {
  pickUpLocation,
  dropOffLocation,
}

final activeDesintationProvider =
    StateProvider<destinations>((ref) => destinations.pickUpLocation);

final mapServiceControllerProvider =
    StateNotifierProvider<MapServiceNotifier, MapServiceState>((ref) {
  return MapServiceNotifier();
});

class MapServiceNotifier extends StateNotifier<MapServiceState> {
  MapServiceNotifier() : super(MapServiceState.initial());

  Address? get pickUpLocation => state.pickUpLocation;

  Address? get dropOffLocation => state.dropOffLocation;

  Vehicle? get vehicle => state.vehicle;

  set pickUpLocation(Address? value) {
    state = state.copyWith(pickUpLocation: value);
  }

  set dropOffLocation(Address? value) {
    state = state.copyWith(dropOffLocation: value);
  }

  set vehicle(Vehicle? value) {
    state = state.copyWith(
      vehicle: value,
    );
  }

  String get currentEventId => state.currentEventId;

  set currentEventId(String value) {
    state = state.copyWith(currentEventId: value);
  }

  ServiceType get serviceType => state.serviceType;

  set serviceType(ServiceType value) {
    state = state.copyWith(serviceType: value);
  }

  bool get loading => state.loading;
  set loading(bool value) {
    state = state.copyWith(loading: value);
  }
}
