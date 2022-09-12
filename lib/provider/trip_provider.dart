import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/model/position/position.dart';
import 'package:maxi_common/model/trip/trip.dart';

final tripProvider =
    StateNotifierProvider<TripNotifier, Trip>((ref) => TripNotifier(ref.read));

class TripNotifier extends StateNotifier<Trip> {
  TripNotifier(this._read) : super(Trip.initial());

  final Reader _read;

  setStart (Position position) => state = state.copyWith(start: position);

  setEnd (Position position) => state = state.copyWith(end: position);
}
