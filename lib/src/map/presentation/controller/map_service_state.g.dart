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
    );

Map<String, dynamic> _$$_MapServiceStateToJson(_$_MapServiceState instance) =>
    <String, dynamic>{
      'pickUpLocation': instance.pickUpLocation,
      'dropOffLocation': instance.dropOffLocation,
    };
