// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maxi_common/src/data/model/position/position.dart';
import 'package:maxi_common/src/helper/helper.dart';
part 'map_result.freezed.dart';
part 'map_result.g.dart';

List<MapResult> mapResultsFromJson(List<dynamic> json) {
  return json.map((e) => MapResult.fromJson(e)).toList();
}

@freezed
class MapResult with _$MapResult {
  const factory MapResult({
    @JsonKey(name: 'formatted_address') @Default('') String formattedAdr,
    @Default('') String name,
    @JsonKey(name: 'place_id') required String placeId,
    @JsonKey(name: 'geometry', fromJson: JsonConvert.toLatLng)
        required LatLng coord,
  }) = _MapResult;

  factory MapResult.fromJson(Map<String, dynamic> json) =>
      _$MapResultFromJson(json);
}

extension MapResultExtension on MapResult {
  Position get position => Position(address: formattedAdr, coord: coord);
}
