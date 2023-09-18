import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:towfix/core/data/dtos/address/address.dart';
import 'package:towfix/core/data/dtos/service_request/service_request.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';

part 'map_service_state.g.dart';
part 'map_service_state.freezed.dart';

@freezed
class MapServiceState with _$MapServiceState {
  factory MapServiceState({
    required Address? pickUpLocation,
    required Address? dropOffLocation,
    required Vehicle? vehicle,
    required String currentEventId,
    required ServiceType serviceType,
    required ServiceRequest serviceRequest,
    required bool loading,
  }) = _MapServiceState;

  factory MapServiceState.fromJson(Map<String, dynamic> json) =>
      _$MapServiceStateFromJson(json);

  factory MapServiceState.initial() => MapServiceState(
      dropOffLocation: Address.initial(),
      pickUpLocation: Address.initial(),
      vehicle: Vehicle.initial(),
      currentEventId: '',
      loading: false,
      serviceRequest: ServiceRequest.initial(),
      serviceType: ServiceType.none);
}
