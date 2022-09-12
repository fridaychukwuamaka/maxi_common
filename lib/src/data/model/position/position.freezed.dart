// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Position {
  String get address => throw _privateConstructorUsedError;
  LatLng get coord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({String address, LatLng coord});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? coord = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$$_PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$$_PositionCopyWith(
          _$_Position value, $Res Function(_$_Position) then) =
      __$$_PositionCopyWithImpl<$Res>;
  @override
  $Res call({String address, LatLng coord});
}

/// @nodoc
class __$$_PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$$_PositionCopyWith<$Res> {
  __$$_PositionCopyWithImpl(
      _$_Position _value, $Res Function(_$_Position) _then)
      : super(_value, (v) => _then(v as _$_Position));

  @override
  _$_Position get _value => super._value as _$_Position;

  @override
  $Res call({
    Object? address = freezed,
    Object? coord = freezed,
  }) {
    return _then(_$_Position(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Position implements _Position {
  const _$_Position(
      {this.address = '', this.coord = const LatLng(45.521563, -122.677433)});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final LatLng coord;

  @override
  String toString() {
    return 'Position(address: $address, coord: $coord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Position &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.coord, coord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(coord));

  @JsonKey(ignore: true)
  @override
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      __$$_PositionCopyWithImpl<_$_Position>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position({final String address, final LatLng coord}) =
      _$_Position;

  @override
  String get address;
  @override
  LatLng get coord;
  @override
  @JsonKey(ignore: true)
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      throw _privateConstructorUsedError;
}
