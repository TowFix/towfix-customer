// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeocodeModel _$$_GeocodeModelFromJson(Map<String, dynamic> json) =>
    _$_GeocodeModel(
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => GeocodeResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_GeocodeModelToJson(_$_GeocodeModel instance) =>
    <String, dynamic>{
      'plus_code': instance.plusCode,
      'results': instance.results,
      'status': instance.status,
    };
