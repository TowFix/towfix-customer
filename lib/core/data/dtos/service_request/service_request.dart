import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:towfix/core/data/dtos/profile/profile.dart';
import 'package:towfix/core/utils/json_converter_wrapper.dart';

import '../address/address.dart';

part 'service_request.freezed.dart';
part 'service_request.g.dart';

@freezed
class ServiceRequest with _$ServiceRequest {
  const factory ServiceRequest(
      {required String id,
      required Profile requester,
      required Profile servicer,
      required ServiceType serviceType,
      required double amount,
      required RequestStatus status,
      required Address origin,
      required Address destination,
      @JsonKey(
          readValue: JsonConverterWrapper.date,
          toJson: JsonConverterWrapper.toJson)
      required DateTime requestDate,
      @JsonKey(
          readValue: JsonConverterWrapper.date,
          toJson: JsonConverterWrapper.toJson)
      required DateTime date}) = _ServiceRequest;

  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);

  factory ServiceRequest.initial() => ServiceRequest(
        id: '',
        requester: Profile.initial(),
        servicer: Profile.initial(),
        serviceType: ServiceType.towing,
        amount: 0.0,
        destination: Address.initial(),
        origin: Address.initial(),
        status: RequestStatus.none,
        requestDate: DateTime.now(),
        date: DateTime(2023),
      );
}

enum ServiceType {
  @JsonValue('mechanicRequest')
  mechanicRequest,
  @JsonValue('towing')
  towing,
  @JsonValue('merchanicShop')
  merchanicShop,
  @JsonValue('none')
  none,
}

enum RequestStatus {
  requested,
  inProgress,
  none,
  cancelled,
  completed,
}
