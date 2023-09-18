import 'package:freezed_annotation/freezed_annotation.dart';

import 'structured_formatting.dart';
import 'term.dart';

part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  factory Prediction({
    String? description,
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    @JsonKey(name: 'structured_formatting')
        StructuredFormatting? structuredFormatting,
    List<Term>? terms,
    List<String>? types,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
}
