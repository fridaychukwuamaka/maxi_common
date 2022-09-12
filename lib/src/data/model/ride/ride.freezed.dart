// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ride _$RideFromJson(Map<String, dynamic> json) {
  return _Ride.fromJson(json);
}

/// @nodoc
mixin _$Ride {
  @JsonKey(name: 'ride_time')
  String get time => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
  double get pickupLat => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'number_of_seats',
      fromJson: JsonConvert.stringToInt,
      includeIfNull: false)
  int? get seatNum => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
  double get pickupLong => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'destination_location_latitude',
      fromJson: JsonConvert.stringToDouble)
  double get dropoffLat => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'destination_location_longitude',
      fromJson: JsonConvert.stringToDouble)
  double get dropoffLong => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_address')
  String get pickupAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_address')
  String get dropoffAddr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ride_time')
          String time,
      @JsonKey(name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
          double pickupLat,
      @JsonKey(name: 'number_of_seats', fromJson: JsonConvert.stringToInt, includeIfNull: false)
          int? seatNum,
      @JsonKey(name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
          double pickupLong,
      @JsonKey(name: 'destination_location_latitude', fromJson: JsonConvert.stringToDouble)
          double dropoffLat,
      @JsonKey(name: 'destination_location_longitude', fromJson: JsonConvert.stringToDouble)
          double dropoffLong,
      @JsonKey(name: 'pickup_address')
          String pickupAddr,
      @JsonKey(name: 'destination_address')
          String dropoffAddr});
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  final Ride _value;
  // ignore: unused_field
  final $Res Function(Ride) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? pickupLat = freezed,
    Object? seatNum = freezed,
    Object? pickupLong = freezed,
    Object? dropoffLat = freezed,
    Object? dropoffLong = freezed,
    Object? pickupAddr = freezed,
    Object? dropoffAddr = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLat: pickupLat == freezed
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as double,
      seatNum: seatNum == freezed
          ? _value.seatNum
          : seatNum // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLong: pickupLong == freezed
          ? _value.pickupLong
          : pickupLong // ignore: cast_nullable_to_non_nullable
              as double,
      dropoffLat: dropoffLat == freezed
          ? _value.dropoffLat
          : dropoffLat // ignore: cast_nullable_to_non_nullable
              as double,
      dropoffLong: dropoffLong == freezed
          ? _value.dropoffLong
          : dropoffLong // ignore: cast_nullable_to_non_nullable
              as double,
      pickupAddr: pickupAddr == freezed
          ? _value.pickupAddr
          : pickupAddr // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffAddr: dropoffAddr == freezed
          ? _value.dropoffAddr
          : dropoffAddr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$$_RideCopyWith(_$_Ride value, $Res Function(_$_Ride) then) =
      __$$_RideCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ride_time')
          String time,
      @JsonKey(name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
          double pickupLat,
      @JsonKey(name: 'number_of_seats', fromJson: JsonConvert.stringToInt, includeIfNull: false)
          int? seatNum,
      @JsonKey(name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
          double pickupLong,
      @JsonKey(name: 'destination_location_latitude', fromJson: JsonConvert.stringToDouble)
          double dropoffLat,
      @JsonKey(name: 'destination_location_longitude', fromJson: JsonConvert.stringToDouble)
          double dropoffLong,
      @JsonKey(name: 'pickup_address')
          String pickupAddr,
      @JsonKey(name: 'destination_address')
          String dropoffAddr});
}

/// @nodoc
class __$$_RideCopyWithImpl<$Res> extends _$RideCopyWithImpl<$Res>
    implements _$$_RideCopyWith<$Res> {
  __$$_RideCopyWithImpl(_$_Ride _value, $Res Function(_$_Ride) _then)
      : super(_value, (v) => _then(v as _$_Ride));

  @override
  _$_Ride get _value => super._value as _$_Ride;

  @override
  $Res call({
    Object? time = freezed,
    Object? pickupLat = freezed,
    Object? seatNum = freezed,
    Object? pickupLong = freezed,
    Object? dropoffLat = freezed,
    Object? dropoffLong = freezed,
    Object? pickupAddr = freezed,
    Object? dropoffAddr = freezed,
  }) {
    return _then(_$_Ride(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      pickupLat: pickupLat == freezed
          ? _value.pickupLat
          : pickupLat // ignore: cast_nullable_to_non_nullable
              as double,
      seatNum: seatNum == freezed
          ? _value.seatNum
          : seatNum // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLong: pickupLong == freezed
          ? _value.pickupLong
          : pickupLong // ignore: cast_nullable_to_non_nullable
              as double,
      dropoffLat: dropoffLat == freezed
          ? _value.dropoffLat
          : dropoffLat // ignore: cast_nullable_to_non_nullable
              as double,
      dropoffLong: dropoffLong == freezed
          ? _value.dropoffLong
          : dropoffLong // ignore: cast_nullable_to_non_nullable
              as double,
      pickupAddr: pickupAddr == freezed
          ? _value.pickupAddr
          : pickupAddr // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffAddr: dropoffAddr == freezed
          ? _value.dropoffAddr
          : dropoffAddr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ride implements _Ride {
  const _$_Ride(
      {@JsonKey(name: 'ride_time')
          required this.time,
      @JsonKey(name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
          required this.pickupLat,
      @JsonKey(name: 'number_of_seats', fromJson: JsonConvert.stringToInt, includeIfNull: false)
          this.seatNum,
      @JsonKey(name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
          required this.pickupLong,
      @JsonKey(name: 'destination_location_latitude', fromJson: JsonConvert.stringToDouble)
          required this.dropoffLat,
      @JsonKey(name: 'destination_location_longitude', fromJson: JsonConvert.stringToDouble)
          required this.dropoffLong,
      @JsonKey(name: 'pickup_address')
          required this.pickupAddr,
      @JsonKey(name: 'destination_address')
          required this.dropoffAddr});

  factory _$_Ride.fromJson(Map<String, dynamic> json) => _$$_RideFromJson(json);

  @override
  @JsonKey(name: 'ride_time')
  final String time;
  @override
  @JsonKey(
      name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
  final double pickupLat;
  @override
  @JsonKey(
      name: 'number_of_seats',
      fromJson: JsonConvert.stringToInt,
      includeIfNull: false)
  final int? seatNum;
  @override
  @JsonKey(
      name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
  final double pickupLong;
  @override
  @JsonKey(
      name: 'destination_location_latitude',
      fromJson: JsonConvert.stringToDouble)
  final double dropoffLat;
  @override
  @JsonKey(
      name: 'destination_location_longitude',
      fromJson: JsonConvert.stringToDouble)
  final double dropoffLong;
  @override
  @JsonKey(name: 'pickup_address')
  final String pickupAddr;
  @override
  @JsonKey(name: 'destination_address')
  final String dropoffAddr;

  @override
  String toString() {
    return 'Ride(time: $time, pickupLat: $pickupLat, seatNum: $seatNum, pickupLong: $pickupLong, dropoffLat: $dropoffLat, dropoffLong: $dropoffLong, pickupAddr: $pickupAddr, dropoffAddr: $dropoffAddr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ride &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.pickupLat, pickupLat) &&
            const DeepCollectionEquality().equals(other.seatNum, seatNum) &&
            const DeepCollectionEquality()
                .equals(other.pickupLong, pickupLong) &&
            const DeepCollectionEquality()
                .equals(other.dropoffLat, dropoffLat) &&
            const DeepCollectionEquality()
                .equals(other.dropoffLong, dropoffLong) &&
            const DeepCollectionEquality()
                .equals(other.pickupAddr, pickupAddr) &&
            const DeepCollectionEquality()
                .equals(other.dropoffAddr, dropoffAddr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(pickupLat),
      const DeepCollectionEquality().hash(seatNum),
      const DeepCollectionEquality().hash(pickupLong),
      const DeepCollectionEquality().hash(dropoffLat),
      const DeepCollectionEquality().hash(dropoffLong),
      const DeepCollectionEquality().hash(pickupAddr),
      const DeepCollectionEquality().hash(dropoffAddr));

  @JsonKey(ignore: true)
  @override
  _$$_RideCopyWith<_$_Ride> get copyWith =>
      __$$_RideCopyWithImpl<_$_Ride>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideToJson(
      this,
    );
  }
}

abstract class _Ride implements Ride {
  const factory _Ride(
      {@JsonKey(name: 'ride_time')
          required final String time,
      @JsonKey(name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
          required final double pickupLat,
      @JsonKey(name: 'number_of_seats', fromJson: JsonConvert.stringToInt, includeIfNull: false)
          final int? seatNum,
      @JsonKey(name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
          required final double pickupLong,
      @JsonKey(name: 'destination_location_latitude', fromJson: JsonConvert.stringToDouble)
          required final double dropoffLat,
      @JsonKey(name: 'destination_location_longitude', fromJson: JsonConvert.stringToDouble)
          required final double dropoffLong,
      @JsonKey(name: 'pickup_address')
          required final String pickupAddr,
      @JsonKey(name: 'destination_address')
          required final String dropoffAddr}) = _$_Ride;

  factory _Ride.fromJson(Map<String, dynamic> json) = _$_Ride.fromJson;

  @override
  @JsonKey(name: 'ride_time')
  String get time;
  @override
  @JsonKey(
      name: 'pickup_location_latitude', fromJson: JsonConvert.stringToDouble)
  double get pickupLat;
  @override
  @JsonKey(
      name: 'number_of_seats',
      fromJson: JsonConvert.stringToInt,
      includeIfNull: false)
  int? get seatNum;
  @override
  @JsonKey(
      name: 'pickup_location_longitude', fromJson: JsonConvert.stringToDouble)
  double get pickupLong;
  @override
  @JsonKey(
      name: 'destination_location_latitude',
      fromJson: JsonConvert.stringToDouble)
  double get dropoffLat;
  @override
  @JsonKey(
      name: 'destination_location_longitude',
      fromJson: JsonConvert.stringToDouble)
  double get dropoffLong;
  @override
  @JsonKey(name: 'pickup_address')
  String get pickupAddr;
  @override
  @JsonKey(name: 'destination_address')
  String get dropoffAddr;
  @override
  @JsonKey(ignore: true)
  _$$_RideCopyWith<_$_Ride> get copyWith => throw _privateConstructorUsedError;
}
