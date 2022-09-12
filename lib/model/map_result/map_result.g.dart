// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapResult _$$_MapResultFromJson(Map<String, dynamic> json) => _$_MapResult(
      formattedAdr: json['formatted_address'] as String? ?? '',
      name: json['name'] as String? ?? '',
      placeId: json['place_id'] as String,
      coord: JsonConvert.toLatLng(json['geometry']),
    );

Map<String, dynamic> _$$_MapResultToJson(_$_MapResult instance) =>
    <String, dynamic>{
      'formatted_address': instance.formattedAdr,
      'name': instance.name,
      'place_id': instance.placeId,
      'geometry': instance.coord,
    };
