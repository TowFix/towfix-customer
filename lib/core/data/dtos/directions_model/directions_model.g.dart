// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DirectionsModel _$$_DirectionsModelFromJson(Map<String, dynamic> json) =>
    _$_DirectionsModel(
      geocodedWaypoints: (json['geocoded_waypoints'] as List<dynamic>?)
          ?.map((e) => GeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_DirectionsModelToJson(_$_DirectionsModel instance) =>
    <String, dynamic>{
      'geocoded_waypoints': instance.geocodedWaypoints,
      'routes': instance.routes,
      'status': instance.status,
    };
