// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Leg _$$_LegFromJson(Map<String, dynamic> json) => _$_Leg(
      distance: json['distance'] == null
          ? null
          : Distance.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Duration.fromJson(json['duration'] as Map<String, dynamic>),
      endAddress: json['end_address'] as String?,
      endLocation: json['end_location'] == null
          ? null
          : EndLocation.fromJson(json['end_location'] as Map<String, dynamic>),
      startAddress: json['start_address'] as String?,
      startLocation: json['start_location'] == null
          ? null
          : StartLocation.fromJson(
              json['start_location'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      trafficSpeedEntry: json['traffic_speed_entry'] as List<dynamic>?,
      viaWaypoint: json['via_waypoint'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_LegToJson(_$_Leg instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'end_address': instance.endAddress,
      'end_location': instance.endLocation,
      'start_address': instance.startAddress,
      'start_location': instance.startLocation,
      'steps': instance.steps,
      'traffic_speed_entry': instance.trafficSpeedEntry,
      'via_waypoint': instance.viaWaypoint,
    };
