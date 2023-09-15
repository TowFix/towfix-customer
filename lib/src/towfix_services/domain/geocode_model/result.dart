import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_component.dart';
import 'geometry.dart';
import 'plus_code.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class GeocodeResult with _$GeocodeResult {
  factory GeocodeResult({
    @JsonKey(name: 'address_components')
    List<AddressComponent>? addressComponents,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    Geometry? geometry,
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'plus_code') PlusCode? plusCode,
    List<String>? types,
  }) = _GeocodeResult;

  factory GeocodeResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResultFromJson(json);
}
