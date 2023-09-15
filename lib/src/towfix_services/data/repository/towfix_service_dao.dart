import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:towfix/core/data/dtos/directions/directions.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';

abstract class TowfixServiceDaoRepository {
  Future<Either<Failure, Directions>> getAddressFromGeographicCoOrdinates(
      double latitude, double longitude);
}
