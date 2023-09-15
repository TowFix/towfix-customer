// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      id: json['id'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
      numberPlate: json['numberPlate'] as String,
      extraInfo: json['extraInfo'] as String,
      user: Profile.fromJson(json['user'] as Map<String, dynamic>),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
      'numberPlate': instance.numberPlate,
      'extraInfo': instance.extraInfo,
      'user': instance.user,
      'image': instance.image,
    };
