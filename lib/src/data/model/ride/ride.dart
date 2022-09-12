// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maxi_common/src/helper/helper.dart';
part 'ride.freezed.dart';
part 'ride.g.dart';

@freezed
class Ride with _$Ride {
  const factory Ride({
    @JsonKey(name: 'ride_time')
        required String time,
    @JsonKey(
      name: 'pickup_location_latitude',
      fromJson: JsonConvert.stringToDouble,
    )
        required double pickupLat,
    @JsonKey(
      name: 'number_of_seats',
      fromJson: JsonConvert.stringToInt,
      includeIfNull: false,
    )
        required int? seatNum,
    @JsonKey(
      name: 'pickup_location_longitude',
      fromJson: JsonConvert.stringToDouble,
    )
        required double pickupLong,
    @JsonKey(
      name: 'destination_location_latitude',
      fromJson: JsonConvert.stringToDouble,
    )
        required double dropoffLat,
    @JsonKey(
      name: 'destination_location_longitude',
      fromJson: JsonConvert.stringToDouble,
    )
        required double dropoffLong,
    @JsonKey(name: 'pickup_address')
        required String pickupAddr,
    @JsonKey(name: 'destination_address')
        required String dropoffAddr,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);

  factory Ride.initial() => const Ride(
        time: '',
        pickupLat: 0.0,
        pickupLong: 0.0,
        dropoffLat: 0.0,
        dropoffLong: 0.0,
        pickupAddr: '',
        dropoffAddr: '',
        seatNum: 3,
      );
}
