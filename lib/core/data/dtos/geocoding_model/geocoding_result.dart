import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_component.dart';
import 'geometry.dart';

part 'geocoding_result.freezed.dart';
part 'geocoding_result.g.dart';

@freezed
class GeocodingResult with _$GeocodingResult {
  factory GeocodingResult({
    @JsonKey(name: 'address_components')
    List<AddressComponent>? addressComponents,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    Geometry? geometry,
    @JsonKey(name: 'place_id') String? placeId,
    List<String>? types,
  }) = _GeocodingResult;

  factory GeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodingResultFromJson(json);
}
