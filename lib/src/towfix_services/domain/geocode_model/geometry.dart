import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounds.dart';
import 'location.dart';
import 'viewport.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  factory Geometry({
    Bounds? bounds,
    Location? location,
    @JsonKey(name: 'location_type') String? locationType,
    Viewport? viewport,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}
