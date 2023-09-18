import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoded_waypoint.freezed.dart';
part 'geocoded_waypoint.g.dart';

@freezed
class GeocodedWaypoint with _$GeocodedWaypoint {
  factory GeocodedWaypoint({
    @JsonKey(name: 'geocoder_status') String? geocoderStatus,
    @JsonKey(name: 'place_id') String? placeId,
    List<String>? types,
  }) = _GeocodedWaypoint;

  factory GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$GeocodedWaypointFromJson(json);
}
