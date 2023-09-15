import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:towfix/core/data/dtos/directions/directions.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';
import 'package:towfix/core/utils/success_response.dart';
import 'package:towfix/src/towfix_services/data/repository/towfix_service_dao.dart';
import 'package:towfix/src/towfix_services/data/services/towfix_api_service.dart';
import 'package:towfix/src/towfix_services/domain/geocode_model/geocode_model.dart';

import '../../../../core/application/cache/cache_service.dart';
import '../../../../core/application/device/network_info.dart';

class TowfixServiceDaoRepositoryImpl implements TowfixServiceDaoRepository {
  final NetworkInfo networkInfo;
  final CacheService cacheService;

  TowfixServiceDaoRepositoryImpl(
      {required this.networkInfo, required this.cacheService});

  Future<Either<Failure, Response>> execute(Future<Response> asyncCall) async {
    // * check for internet connectivity
    if (!await networkInfo.hasConnection) {
      return const Left(Failure.network(message: 'No internet connection.'));
    }
    // *

    try {
      final response = await asyncCall;
      if (response.isSuccessful) return Right(response);
      log('response error: ${response.toString()}');

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
      log('response error: ${e.toString()}', name: 'ECDaoImpl', error: e);
      return const Left(
          Failure.exception(message: "Oooops, Something went wrong."));
    }
  }

  @override
  Future<Either<Failure, Directions>> getAddressFromGeographicCoOrdinates(
      double latitude, double longitude) async {
    final result = await execute(
        TowfixApiService.getAddressFromGeographicCoOrdinates(
            latitude, longitude));

    return result.fold(
      (failure) {
        log('response ec dao level: ${failure.toString()}',
            error: 'FETCH getAddressFromGeographicCoOrdinates ERROR');

        return Left(failure);
      },
      (response) async {
        log('\n\ngetAddressFromGeographicCoOrdinates: ${response.toString()}',
            name: 'Events list');
        final data = response.data as Map<String, dynamic>;
        final extract = GeocodeModel.fromJson(data);
        final directions = Directions.initial().copyWith(
          humanReadableAddress:
              extract.results?.first.addressComponents?.first.longName ?? '',
          locationName: extract.results?.first.formattedAddress ?? '',
          locationId: extract.results?.first.placeId ?? '',
          locationLatitude: latitude,
          locationLongitude: longitude,
        );

        return Right(directions);
      },
    );
  }
}
