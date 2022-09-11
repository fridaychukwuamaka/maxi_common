// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'phone_number')
  int get phone => throw _privateConstructorUsedError;
  @HiveField(4)
  Gender? get gender => throw _privateConstructorUsedError;
  @HiveField(5)
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(1) @JsonKey(name: 'last_name') String? lastName,
      @HiveField(2) @JsonKey(name: 'email') String email,
      @HiveField(3) @JsonKey(name: 'phone_number') int phone,
      @HiveField(4) Gender? gender,
      @HiveField(5) String role});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(1) @JsonKey(name: 'last_name') String? lastName,
      @HiveField(2) @JsonKey(name: 'email') String email,
      @HiveField(3) @JsonKey(name: 'phone_number') int phone,
      @HiveField(4) Gender? gender,
      @HiveField(5) String role});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_User(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_User implements _User {
  const _$_User(
      {@HiveField(0) @JsonKey(name: 'first_name') this.firstName,
      @HiveField(1) @JsonKey(name: 'last_name') this.lastName,
      @HiveField(2) @JsonKey(name: 'email') required this.email,
      @HiveField(3) @JsonKey(name: 'phone_number') required this.phone,
      @HiveField(4) this.gender,
      @HiveField(5) this.role = 'rider'});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @HiveField(1)
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @HiveField(2)
  @JsonKey(name: 'email')
  final String email;
  @override
  @HiveField(3)
  @JsonKey(name: 'phone_number')
  final int phone;
  @override
  @HiveField(4)
  final Gender? gender;
  @override
  @JsonKey()
  @HiveField(5)
  final String role;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, gender: $gender, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) @JsonKey(name: 'first_name') final String? firstName,
      @HiveField(1) @JsonKey(name: 'last_name') final String? lastName,
      @HiveField(2) @JsonKey(name: 'email') required final String email,
      @HiveField(3) @JsonKey(name: 'phone_number') required final int phone,
      @HiveField(4) final Gender? gender,
      @HiveField(5) final String role}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @HiveField(1)
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @HiveField(2)
  @JsonKey(name: 'email')
  String get email;
  @override
  @HiveField(3)
  @JsonKey(name: 'phone_number')
  int get phone;
  @override
  @HiveField(4)
  Gender? get gender;
  @override
  @HiveField(5)
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
