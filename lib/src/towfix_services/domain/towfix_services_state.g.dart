// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'towfix_services_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TowfixServiceState _$$_TowfixServiceStateFromJson(
        Map<String, dynamic> json) =>
    _$_TowfixServiceState(
      service: $enumDecode(_$TowfixServicesEnumEnumMap, json['service']),
      pickUploation:
          Directions.fromJson(json['pickUploation'] as Map<String, dynamic>),
      dropOffLocation:
          Directions.fromJson(json['dropOffLocation'] as Map<String, dynamic>),
      directions:
          Directions.fromJson(json['directions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TowfixServiceStateToJson(
        _$_TowfixServiceState instance) =>
    <String, dynamic>{
      'service': _$TowfixServicesEnumEnumMap[instance.service]!,
      'pickUploation': instance.pickUploation,
      'dropOffLocation': instance.dropOffLocation,
      'directions': instance.directions,
    };

const _$TowfixServicesEnumEnumMap = {
  TowfixServicesEnum.towing: 'towing',
  TowfixServicesEnum.shopLocation: 'shopLocation',
  TowfixServicesEnum.merchanicRequest: 'merchanicRequest',
  TowfixServicesEnum.neutral: 'neutral',
};
