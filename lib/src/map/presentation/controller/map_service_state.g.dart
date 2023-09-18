// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_service_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapServiceState _$$_MapServiceStateFromJson(Map<String, dynamic> json) =>
    _$_MapServiceState(
      pickUpLocation: json['pickUpLocation'] == null
          ? null
          : Address.fromJson(json['pickUpLocation'] as Map<String, dynamic>),
      dropOffLocation: json['dropOffLocation'] == null
          ? null
          : Address.fromJson(json['dropOffLocation'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      currentEventId: json['currentEventId'] as String,
      serviceType: $enumDecode(_$ServiceTypeEnumMap, json['serviceType']),
      serviceRequest: ServiceRequest.fromJson(
          json['serviceRequest'] as Map<String, dynamic>),
      loading: json['loading'] as bool,
    );

Map<String, dynamic> _$$_MapServiceStateToJson(_$_MapServiceState instance) =>
    <String, dynamic>{
      'pickUpLocation': instance.pickUpLocation,
      'dropOffLocation': instance.dropOffLocation,
      'vehicle': instance.vehicle,
      'currentEventId': instance.currentEventId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'serviceRequest': instance.serviceRequest,
      'loading': instance.loading,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.mechanicRequest: 'mechanicRequest',
  ServiceType.towing: 'towing',
  ServiceType.merchanicShop: 'merchanicShop',
  ServiceType.none: 'none',
};
