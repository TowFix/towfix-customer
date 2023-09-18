import 'package:freezed_annotation/freezed_annotation.dart';

import 'distance.dart';
import 'duration.dart';
import 'end_location.dart';
import 'polyline.dart';
import 'start_location.dart';

part 'step.freezed.dart';
part 'step.g.dart';

@freezed
class Step with _$Step {
  factory Step({
    Distance? distance,
    Duration? duration,
    @JsonKey(name: 'end_location') EndLocation? endLocation,
    @JsonKey(name: 'html_instructions') String? htmlInstructions,
    Polyline? polyline,
    @JsonKey(name: 'start_location') StartLocation? startLocation,
    @JsonKey(name: 'travel_mode') String? travelMode,
    String? maneuver,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}
