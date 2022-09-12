import 'package:freezed_annotation/freezed_annotation.dart';
import '../position/position.dart';
part 'trip.freezed.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required Position start,
    required Position end,
  }) = _Trip;

  factory Trip.initial() => const Trip(
        start: Position(),
        end: Position(),
      );
}
