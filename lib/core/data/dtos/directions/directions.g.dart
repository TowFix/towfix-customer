// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Directions _$$_DirectionsFromJson(Map<String, dynamic> json) =>
    _$_Directions(
      humanReadableAddress: json['humanReadableAddress'] as String?,
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String?,
      locationLatitude: (json['locationLatitude'] as num?)?.toDouble(),
      locationLongitude: (json['locationLongitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DirectionsToJson(_$_Directions instance) =>
    <String, dynamic>{
      'humanReadableAddress': instance.humanReadableAddress,
      'locationName': instance.locationName,
      'locationId': instance.locationId,
      'locationLatitude': instance.locationLatitude,
      'locationLongitude': instance.locationLongitude,
    };
