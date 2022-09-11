// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapResult _$MapResultFromJson(Map<String, dynamic> json) {
  return _MapResult.fromJson(json);
}

/// @nodoc
mixin _$MapResult {
  @JsonKey(name: 'formatted_address')
  String get formattedAdr => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
  LatLng get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapResultCopyWith<MapResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResultCopyWith<$Res> {
  factory $MapResultCopyWith(MapResult value, $Res Function(MapResult) then) =
      _$MapResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAdr,
      String name,
      @JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng) LatLng coord});
}

/// @nodoc
class _$MapResultCopyWithImpl<$Res> implements $MapResultCopyWith<$Res> {
  _$MapResultCopyWithImpl(this._value, this._then);

  final MapResult _value;
  // ignore: unused_field
  final $Res Function(MapResult) _then;

  @override
  $Res call({
    Object? formattedAdr = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? coord = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAdr: formattedAdr == freezed
          ? _value.formattedAdr
          : formattedAdr // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$$_MapResultCopyWith<$Res> implements $MapResultCopyWith<$Res> {
  factory _$$_MapResultCopyWith(
          _$_MapResult value, $Res Function(_$_MapResult) then) =
      __$$_MapResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAdr,
      String name,
      @JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng) LatLng coord});
}

/// @nodoc
class __$$_MapResultCopyWithImpl<$Res> extends _$MapResultCopyWithImpl<$Res>
    implements _$$_MapResultCopyWith<$Res> {
  __$$_MapResultCopyWithImpl(
      _$_MapResult _value, $Res Function(_$_MapResult) _then)
      : super(_value, (v) => _then(v as _$_MapResult));

  @override
  _$_MapResult get _value => super._value as _$_MapResult;

  @override
  $Res call({
    Object? formattedAdr = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? coord = freezed,
  }) {
    return _then(_$_MapResult(
      formattedAdr: formattedAdr == freezed
          ? _value.formattedAdr
          : formattedAdr // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapResult implements _MapResult {
  const _$_MapResult(
      {@JsonKey(name: 'formatted_address')
          this.formattedAdr = '',
      this.name = '',
      @JsonKey(name: 'place_id')
          required this.placeId,
      @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
          required this.coord});

  factory _$_MapResult.fromJson(Map<String, dynamic> json) =>
      _$$_MapResultFromJson(json);

  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAdr;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
  final LatLng coord;

  @override
  String toString() {
    return 'MapResult(formattedAdr: $formattedAdr, name: $name, placeId: $placeId, coord: $coord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapResult &&
            const DeepCollectionEquality()
                .equals(other.formattedAdr, formattedAdr) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.coord, coord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formattedAdr),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(coord));

  @JsonKey(ignore: true)
  @override
  _$$_MapResultCopyWith<_$_MapResult> get copyWith =>
      __$$_MapResultCopyWithImpl<_$_MapResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapResultToJson(
      this,
    );
  }
}

abstract class _MapResult implements MapResult {
  const factory _MapResult(
      {@JsonKey(name: 'formatted_address')
          final String formattedAdr,
      final String name,
      @JsonKey(name: 'place_id')
          required final String placeId,
      @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
          required final LatLng coord}) = _$_MapResult;

  factory _MapResult.fromJson(Map<String, dynamic> json) =
      _$_MapResult.fromJson;

  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAdr;
  @override
  String get name;
  @override
  @JsonKey(name: 'place_id')
  String get placeId;
  @override
  @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
  LatLng get coord;
  @override
  @JsonKey(ignore: true)
  _$$_MapResultCopyWith<_$_MapResult> get copyWith =>
      throw _privateConstructorUsedError;
}
