import 'package:freezed_annotation/freezed_annotation.dart';

import 'prediction.dart';

part 'places.freezed.dart';
part 'places.g.dart';

@freezed
class Places with _$Places {
  factory Places({
    List<Prediction>? predictions,
    String? status,
  }) = _Places;

  factory Places.fromJson(Map<String, dynamic> json) => _$PlacesFromJson(json);
}
