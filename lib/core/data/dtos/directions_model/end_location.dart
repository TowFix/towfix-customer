import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_location.freezed.dart';
part 'end_location.g.dart';

@freezed
class EndLocation with _$EndLocation {
  factory EndLocation({
    double? lat,
    double? lng,
  }) = _EndLocation;

  factory EndLocation.fromJson(Map<String, dynamic> json) =>
      _$EndLocationFromJson(json);
}
