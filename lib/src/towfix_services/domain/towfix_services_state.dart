import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:towfix/core/data/dtos/directions/directions.dart';

part 'towfix_services_state.g.dart';
part 'towfix_services_state.freezed.dart';

@freezed
class TowfixServiceState with _$TowfixServiceState {
  const factory TowfixServiceState({
    required TowfixServicesEnum service,
    required Directions pickUploation,
    required Directions dropOffLocation,
    required Directions directions,
  }) = _TowfixServiceState;

  factory TowfixServiceState.initial() => TowfixServiceState(
        dropOffLocation: Directions.initial(),
        pickUploation: Directions.initial(),
        directions: Directions.initial(),
        service: TowfixServicesEnum.neutral,
      );

  factory TowfixServiceState.fromJson(Map<String, dynamic> json) =>
      _$TowfixServiceStateFromJson(json);
}

enum TowfixServicesEnum {
  towing,
  shopLocation,
  merchanicRequest,
  neutral,
}
