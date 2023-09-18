import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounds.dart';
import 'leg.dart';
import 'overview_polyline.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  factory Route({
    Bounds? bounds,
    String? copyrights,
    List<Leg>? legs,
    @JsonKey(name: 'overview_polyline') OverviewPolyline? overviewPolyline,
    String? summary,
    List<dynamic>? warnings,
    @JsonKey(name: 'waypoint_order') List<dynamic>? waypointOrder,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
