import 'package:freezed_annotation/freezed_annotation.dart';

part 'directions.freezed.dart';
part 'directions.g.dart';

@freezed
class Directions with _$Directions {
  const factory Directions({
    String? humanReadableAddress,
    String? locationName,
    String? locationId,
    double? locationLatitude,
    double? locationLongitude,
  }) = _Directions;

  factory Directions.initial() => const Directions();

  factory Directions.fromJson(Map<String, dynamic> json) =>
      _$DirectionsFromJson(json);
}
