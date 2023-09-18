// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Places _$$_PlacesFromJson(Map<String, dynamic> json) => _$_Places(
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PlacesToJson(_$_Places instance) => <String, dynamic>{
      'predictions': instance.predictions,
      'status': instance.status,
    };
