import 'package:freezed_annotation/freezed_annotation.dart';

import 'plus_code.dart';
import 'result.dart';

part 'geocode_model.freezed.dart';
part 'geocode_model.g.dart';

@freezed
class GeocodeModel with _$GeocodeModel {
  factory GeocodeModel({
    @JsonKey(name: 'plus_code') PlusCode? plusCode,
    List<GeocodeResult>? results,
    String? status,
  }) = _GeocodeModel;

  factory GeocodeModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeModelFromJson(json);
}
