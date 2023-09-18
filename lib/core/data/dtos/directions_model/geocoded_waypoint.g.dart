// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoded_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeocodedWaypoint _$$_GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    _$_GeocodedWaypoint(
      geocoderStatus: json['geocoder_status'] as String?,
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_GeocodedWaypointToJson(_$_GeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoder_status': instance.geocoderStatus,
      'place_id': instance.placeId,
      'types': instance.types,
    };
