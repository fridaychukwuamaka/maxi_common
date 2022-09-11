import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'position.freezed.dart';

@freezed
class Position with _$Position {
  const factory Position({
    @Default('') String address,
    @Default(LatLng(45.521563, -122.677433)) LatLng coord,
  }) = _Position;

  // factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);

}
