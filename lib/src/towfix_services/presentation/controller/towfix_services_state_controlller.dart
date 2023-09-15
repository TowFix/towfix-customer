import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:towfix/core/providers/common.dart';
import 'package:towfix/src/towfix_services/data/repository/towfix_service_dao.dart';
import 'package:towfix/src/towfix_services/domain/towfix_services_state.dart';

import '../../../../core/data/dtos/directions/directions.dart';
import '../../../../core/data/dtos/failure/failure.dart';

final transactionControllerProvider = StateNotifierProvider.autoDispose<
    TowfixServicesStateNotifier, TowfixServiceState>((ref) {
  final dao = ref.read(towfixDaoProvider);
  final cao = ref.read(cacheServiceProvider);
  return TowfixServicesStateNotifier(dao: dao);
});

class TowfixServicesStateNotifier extends StateNotifier<TowfixServiceState> {
  TowfixServicesStateNotifier({required this.dao})
      : super(TowfixServiceState.initial());

  final TowfixServiceDaoRepository dao;

  // * getters
  TowfixServicesEnum get service => state.service;
  Directions get pickUpLocation => state.pickUploation;
  Directions get dropOffLocation => state.dropOffLocation;
  Directions get directions => state.directions;

  //* setters
  set service(TowfixServicesEnum value) {
    state = state.copyWith(service: value);
  }

  set pickUpLocation(Directions value) {
    state = state.copyWith(pickUploation: value);
  }

  set dropOffLocation(Directions value) {
    state = state.copyWith(dropOffLocation: value);
  }

  set directions(Directions value) {
    state = state.copyWith(directions: value);
  }

  // * methods
  Future<void> searchPlace(double latitude, double longitude) async {
    final result =
        await dao.getAddressFromGeographicCoOrdinates(latitude, longitude);

    result.fold((l) {
      directions = Directions.initial();
    }, (r) {
      directions = r;
    });
  }
}
