import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'gender.g.dart';

@HiveType(typeId: 2)
enum Gender {
  @HiveField(0)
  @JsonValue('male')
  male,
  @HiveField(1)
  @JsonValue('female')
  female
}
