// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeocodingModel _$$_GeocodingModelFromJson(Map<String, dynamic> json) =>
    _$_GeocodingModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => GeocodingResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_GeocodingModelToJson(_$_GeocodingModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'status': instance.status,
    };
