// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Trip {
  Position get start => throw _privateConstructorUsedError;
  Position get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call({Position start, Position end});

  $PositionCopyWith<$Res> get start;
  $PositionCopyWith<$Res> get end;
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Position,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }

  @override
  $PositionCopyWith<$Res> get start {
    return $PositionCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $PositionCopyWith<$Res> get end {
    return $PositionCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  $Res call({Position start, Position end});

  @override
  $PositionCopyWith<$Res> get start;
  @override
  $PositionCopyWith<$Res> get end;
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, (v) => _then(v as _$_Trip));

  @override
  _$_Trip get _value => super._value as _$_Trip;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Trip(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Position,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_Trip implements _Trip {
  const _$_Trip({required this.start, required this.end});

  @override
  final Position start;
  @override
  final Position end;

  @override
  String toString() {
    return 'Trip(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final Position start, required final Position end}) = _$_Trip;

  @override
  Position get start;
  @override
  Position get end;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
