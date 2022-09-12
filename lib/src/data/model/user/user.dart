// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:maxi_common/src/enums/gender.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 1)
  const factory User({
    @HiveField(0) @JsonKey(name: 'first_name') String? firstName,
    @HiveField(1) @JsonKey(name: 'last_name') String? lastName,
    @HiveField(2) @JsonKey(name: 'email') required String email,
    @HiveField(3) @JsonKey(name: 'phone_number') required int phone,
    @HiveField(4) Gender? gender,
    @HiveField(5) @Default('rider') String role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty() => const User(
        firstName: '',
        lastName: '',
        email: '',
        phone: 0,
      );
}
