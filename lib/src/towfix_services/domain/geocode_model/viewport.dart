import 'package:freezed_annotation/freezed_annotation.dart';

import 'northeast.dart';
import 'southwest.dart';

part 'viewport.freezed.dart';
part 'viewport.g.dart';

@freezed
class Viewport with _$Viewport {
  factory Viewport({
    Northeast? northeast,
    Southwest? southwest,
  }) = _Viewport;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
}
