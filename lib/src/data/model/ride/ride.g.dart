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

Map<String, dynamic> _$$_RideToJson(_$_Ride instance) {
  final val = <String, dynamic>{
    'ride_time': instance.time,
    'pickup_location_latitude': instance.pickupLat,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number_of_seats', instance.seatNum);
  val['pickup_location_longitude'] = instance.pickupLong;
  val['destination_location_latitude'] = instance.dropoffLat;
  val['destination_location_longitude'] = instance.dropoffLong;
  val['pickup_address'] = instance.pickupAddr;
  val['destination_address'] = instance.dropoffAddr;
  return val;
}
