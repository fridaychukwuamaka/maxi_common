// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Flow<E, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? error) failure,
    required TResult Function(R? result) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlowInitial<E, R> value) initial,
    required TResult Function(FlowLoading<E, R> value) loading,
    required TResult Function(FlowFailure<E, R> value) failure,
    required TResult Function(FlowSuccess<E, R> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowCopyWith<E, R, $Res> {
  factory $FlowCopyWith(Flow<E, R> value, $Res Function(Flow<E, R>) then) =
      _$FlowCopyWithImpl<E, R, $Res>;
}

/// @nodoc
class _$FlowCopyWithImpl<E, R, $Res> implements $FlowCopyWith<E, R, $Res> {
  _$FlowCopyWithImpl(this._value, this._then);

  final Flow<E, R> _value;
  // ignore: unused_field
  final $Res Function(Flow<E, R>) _then;
}

/// @nodoc
abstract class _$$FlowInitialCopyWith<E, R, $Res> {
  factory _$$FlowInitialCopyWith(
          _$FlowInitial<E, R> value, $Res Function(_$FlowInitial<E, R>) then) =
      __$$FlowInitialCopyWithImpl<E, R, $Res>;
}

/// @nodoc
class __$$FlowInitialCopyWithImpl<E, R, $Res>
    extends _$FlowCopyWithImpl<E, R, $Res>
    implements _$$FlowInitialCopyWith<E, R, $Res> {
  __$$FlowInitialCopyWithImpl(
      _$FlowInitial<E, R> _value, $Res Function(_$FlowInitial<E, R>) _then)
      : super(_value, (v) => _then(v as _$FlowInitial<E, R>));

  @override
  _$FlowInitial<E, R> get _value => super._value as _$FlowInitial<E, R>;
}

/// @nodoc

class _$FlowInitial<E, R> extends FlowInitial<E, R> {
  const _$FlowInitial() : super._();

  @override
  String toString() {
    return 'Flow<$E, $R>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlowInitial<E, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? error) failure,
    required TResult Function(R? result) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlowInitial<E, R> value) initial,
    required TResult Function(FlowLoading<E, R> value) loading,
    required TResult Function(FlowFailure<E, R> value) failure,
    required TResult Function(FlowSuccess<E, R> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FlowInitial<E, R> extends Flow<E, R> {
  const factory FlowInitial() = _$FlowInitial<E, R>;
  const FlowInitial._() : super._();
}

/// @nodoc
abstract class _$$FlowLoadingCopyWith<E, R, $Res> {
  factory _$$FlowLoadingCopyWith(
          _$FlowLoading<E, R> value, $Res Function(_$FlowLoading<E, R>) then) =
      __$$FlowLoadingCopyWithImpl<E, R, $Res>;
}

/// @nodoc
class __$$FlowLoadingCopyWithImpl<E, R, $Res>
    extends _$FlowCopyWithImpl<E, R, $Res>
    implements _$$FlowLoadingCopyWith<E, R, $Res> {
  __$$FlowLoadingCopyWithImpl(
      _$FlowLoading<E, R> _value, $Res Function(_$FlowLoading<E, R>) _then)
      : super(_value, (v) => _then(v as _$FlowLoading<E, R>));

  @override
  _$FlowLoading<E, R> get _value => super._value as _$FlowLoading<E, R>;
}

/// @nodoc

class _$FlowLoading<E, R> extends FlowLoading<E, R> {
  const _$FlowLoading() : super._();

  @override
  String toString() {
    return 'Flow<$E, $R>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlowLoading<E, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? error) failure,
    required TResult Function(R? result) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlowInitial<E, R> value) initial,
    required TResult Function(FlowLoading<E, R> value) loading,
    required TResult Function(FlowFailure<E, R> value) failure,
    required TResult Function(FlowSuccess<E, R> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FlowLoading<E, R> extends Flow<E, R> {
  const factory FlowLoading() = _$FlowLoading<E, R>;
  const FlowLoading._() : super._();
}

/// @nodoc
abstract class _$$FlowFailureCopyWith<E, R, $Res> {
  factory _$$FlowFailureCopyWith(
          _$FlowFailure<E, R> value, $Res Function(_$FlowFailure<E, R>) then) =
      __$$FlowFailureCopyWithImpl<E, R, $Res>;
  $Res call({E? error});
}

/// @nodoc
class __$$FlowFailureCopyWithImpl<E, R, $Res>
    extends _$FlowCopyWithImpl<E, R, $Res>
    implements _$$FlowFailureCopyWith<E, R, $Res> {
  __$$FlowFailureCopyWithImpl(
      _$FlowFailure<E, R> _value, $Res Function(_$FlowFailure<E, R>) _then)
      : super(_value, (v) => _then(v as _$FlowFailure<E, R>));

  @override
  _$FlowFailure<E, R> get _value => super._value as _$FlowFailure<E, R>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FlowFailure<E, R>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E?,
    ));
  }
}

/// @nodoc

class _$FlowFailure<E, R> extends FlowFailure<E, R> {
  const _$FlowFailure({this.error}) : super._();

  @override
  final E? error;

  @override
  String toString() {
    return 'Flow<$E, $R>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowFailure<E, R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$FlowFailureCopyWith<E, R, _$FlowFailure<E, R>> get copyWith =>
      __$$FlowFailureCopyWithImpl<E, R, _$FlowFailure<E, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? error) failure,
    required TResult Function(R? result) success,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlowInitial<E, R> value) initial,
    required TResult Function(FlowLoading<E, R> value) loading,
    required TResult Function(FlowFailure<E, R> value) failure,
    required TResult Function(FlowSuccess<E, R> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FlowFailure<E, R> extends Flow<E, R> {
  const factory FlowFailure({final E? error}) = _$FlowFailure<E, R>;
  const FlowFailure._() : super._();

  E? get error;
  @JsonKey(ignore: true)
  _$$FlowFailureCopyWith<E, R, _$FlowFailure<E, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlowSuccessCopyWith<E, R, $Res> {
  factory _$$FlowSuccessCopyWith(
          _$FlowSuccess<E, R> value, $Res Function(_$FlowSuccess<E, R>) then) =
      __$$FlowSuccessCopyWithImpl<E, R, $Res>;
  $Res call({R? result});
}

/// @nodoc
class __$$FlowSuccessCopyWithImpl<E, R, $Res>
    extends _$FlowCopyWithImpl<E, R, $Res>
    implements _$$FlowSuccessCopyWith<E, R, $Res> {
  __$$FlowSuccessCopyWithImpl(
      _$FlowSuccess<E, R> _value, $Res Function(_$FlowSuccess<E, R>) _then)
      : super(_value, (v) => _then(v as _$FlowSuccess<E, R>));

  @override
  _$FlowSuccess<E, R> get _value => super._value as _$FlowSuccess<E, R>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$FlowSuccess<E, R>(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as R?,
    ));
  }
}

/// @nodoc

class _$FlowSuccess<E, R> extends FlowSuccess<E, R> {
  const _$FlowSuccess({this.result}) : super._();

  @override
  final R? result;

  @override
  String toString() {
    return 'Flow<$E, $R>.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowSuccess<E, R> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$FlowSuccessCopyWith<E, R, _$FlowSuccess<E, R>> get copyWith =>
      __$$FlowSuccessCopyWithImpl<E, R, _$FlowSuccess<E, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(E? error) failure,
    required TResult Function(R? result) success,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(E? error)? failure,
    TResult Function(R? result)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlowInitial<E, R> value) initial,
    required TResult Function(FlowLoading<E, R> value) loading,
    required TResult Function(FlowFailure<E, R> value) failure,
    required TResult Function(FlowSuccess<E, R> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlowInitial<E, R> value)? initial,
    TResult Function(FlowLoading<E, R> value)? loading,
    TResult Function(FlowFailure<E, R> value)? failure,
    TResult Function(FlowSuccess<E, R> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FlowSuccess<E, R> extends Flow<E, R> {
  const factory FlowSuccess({final R? result}) = _$FlowSuccess<E, R>;
  const FlowSuccess._() : super._();

  R? get result;
  @JsonKey(ignore: true)
  _$$FlowSuccessCopyWith<E, R, _$FlowSuccess<E, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
