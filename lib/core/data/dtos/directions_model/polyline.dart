import 'package:freezed_annotation/freezed_annotation.dart';

part 'polyline.freezed.dart';
part 'polyline.g.dart';

@freezed
class Polyline with _$Polyline {
  factory Polyline({
    String? points,
  }) = _Polyline;

  factory Polyline.fromJson(Map<String, dynamic> json) =>
      _$PolylineFromJson(json);
}
