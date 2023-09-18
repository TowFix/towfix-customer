import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_location.freezed.dart';
part 'start_location.g.dart';

@freezed
class StartLocation with _$StartLocation {
  factory StartLocation({
    double? lat,
    double? lng,
  }) = _StartLocation;

  factory StartLocation.fromJson(Map<String, dynamic> json) =>
      _$StartLocationFromJson(json);
}
