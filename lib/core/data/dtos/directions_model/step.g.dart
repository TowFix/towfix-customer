// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Step _$$_StepFromJson(Map<String, dynamic> json) => _$_Step(
      distance: json['distance'] == null
          ? null
          : Distance.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Duration.fromJson(json['duration'] as Map<String, dynamic>),
      endLocation: json['end_location'] == null
          ? null
          : EndLocation.fromJson(json['end_location'] as Map<String, dynamic>),
      htmlInstructions: json['html_instructions'] as String?,
      polyline: json['polyline'] == null
          ? null
          : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      startLocation: json['start_location'] == null
          ? null
          : StartLocation.fromJson(
              json['start_location'] as Map<String, dynamic>),
      travelMode: json['travel_mode'] as String?,
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$$_StepToJson(_$_Step instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'end_location': instance.endLocation,
      'html_instructions': instance.htmlInstructions,
      'polyline': instance.polyline,
      'start_location': instance.startLocation,
      'travel_mode': instance.travelMode,
      'maneuver': instance.maneuver,
    };
