import 'package:freezed_annotation/freezed_annotation.dart';

import 'distance.dart';
import 'duration.dart';
import 'end_location.dart';
import 'start_location.dart';
import 'step.dart';

part 'leg.freezed.dart';
part 'leg.g.dart';

@freezed
class Leg with _$Leg {
  factory Leg({
    Distance? distance,
    Duration? duration,
    @JsonKey(name: 'end_address') String? endAddress,
    @JsonKey(name: 'end_location') EndLocation? endLocation,
    @JsonKey(name: 'start_address') String? startAddress,
    @JsonKey(name: 'start_location') StartLocation? startLocation,
    List<Step>? steps,
    @JsonKey(name: 'traffic_speed_entry') List<dynamic>? trafficSpeedEntry,
    @JsonKey(name: 'via_waypoint') List<dynamic>? viaWaypoint,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}
