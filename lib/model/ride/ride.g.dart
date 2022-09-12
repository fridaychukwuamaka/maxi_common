// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ride _$$_RideFromJson(Map<String, dynamic> json) => _$_Ride(
      time: json['ride_time'] as String,
      pickupLat: JsonConvert.stringToDouble(json['pickup_location_latitude']),
      seatNum: JsonConvert.stringToInt(json['number_of_seats']),
      pickupLong: JsonConvert.stringToDouble(json['pickup_location_longitude']),
      dropoffLat:
          JsonConvert.stringToDouble(json['destination_location_latitude']),
      dropoffLong:
          JsonConvert.stringToDouble(json['destination_location_longitude']),
      pickupAddr: json['pickup_address'] as String,
      dropoffAddr: json['destination_address'] as String,
    );

Map<String, dynamic> _$$_RideToJson(_$_Ride instance) => <String, dynamic>{
      'ride_time': instance.time,
      'pickup_location_latitude': instance.pickupLat,
      'number_of_seats': instance.seatNum,
      'pickup_location_longitude': instance.pickupLong,
      'destination_location_latitude': instance.dropoffLat,
      'destination_location_longitude': instance.dropoffLong,
      'pickup_address': instance.pickupAddr,
      'destination_address': instance.dropoffAddr,
    };
