import 'package:freezed_annotation/freezed_annotation.dart';

import 'geocoded_waypoint.dart';
import 'route.dart';

part 'directions_model.freezed.dart';
part 'directions_model.g.dart';

@freezed
class DirectionsModel with _$DirectionsModel {
  factory DirectionsModel({
    @JsonKey(name: 'geocoded_waypoints')
        List<GeocodedWaypoint>? geocodedWaypoints,
    List<Route>? routes,
    String? status,
  }) = _DirectionsModel;

  factory DirectionsModel.fromJson(Map<String, dynamic> json) =>
      _$DirectionsModelFromJson(json);
}
