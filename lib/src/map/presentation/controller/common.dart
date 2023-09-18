import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:towfix/core/data/dtos/directions_model/directions_model.dart';
import 'package:towfix/core/data/dtos/failure/failure.dart';
import 'package:towfix/src/map/data/map_service_repository.dart';

part 'common.g.dart';

@riverpod
Future<Either<Failure, DirectionsModel>> directions(
    DirectionsRef ref, LatLng destination, LatLng start) {
  final searchRepo = ref.read(mapServiceRepositoryImplProvider);
  return searchRepo.getDirections(destination: destination, origin: start);
  // return ;
}
