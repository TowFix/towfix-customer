import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_polyline.freezed.dart';
part 'overview_polyline.g.dart';

@freezed
class OverviewPolyline with _$OverviewPolyline {
  factory OverviewPolyline({
    String? points,
  }) = _OverviewPolyline;

  factory OverviewPolyline.fromJson(Map<String, dynamic> json) =>
      _$OverviewPolylineFromJson(json);
}
