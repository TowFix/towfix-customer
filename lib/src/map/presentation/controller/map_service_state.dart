import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:towfix/core/data/dtos/address/address.dart';

part 'map_service_state.g.dart';
part 'map_service_state.freezed.dart';

@freezed
class MapServiceState with _$MapServiceState {
  factory MapServiceState({
    required Address? pickUpLocation,
    required Address? dropOffLocation,
  }) = _MapServiceState;

  factory MapServiceState.fromJson(Map<String, dynamic> json) =>
      _$MapServiceStateFromJson(json);

  factory MapServiceState.initial() => MapServiceState(
        dropOffLocation: Address.initial(),
        pickUpLocation: Address.initial(),
      );
}
