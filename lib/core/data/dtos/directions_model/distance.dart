import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance.freezed.dart';
part 'distance.g.dart';

@freezed
class Distance with _$Distance {
  factory Distance({
    String? text,
    int? value,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}
