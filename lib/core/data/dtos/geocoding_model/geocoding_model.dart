import 'package:freezed_annotation/freezed_annotation.dart';

import 'geocoding_result.dart';

part 'geocoding_model.freezed.dart';
part 'geocoding_model.g.dart';

@freezed
class GeocodingModel with _$GeocodingModel {
  factory GeocodingModel({
    List<GeocodingResult>? results,
    String? status,
  }) = _GeocodingModel;

  factory GeocodingModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodingModelFromJson(json);
}
