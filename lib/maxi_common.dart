library maxi_common;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/data/repository/auth_repository.dart';
import 'src/data/repository/token_repository.dart';
import 'src/data/repository/user_repository.dart';
import 'src/provider/map_display_provider.dart';
import 'src/provider/trip_provider.dart';
import 'src/data/model/trip/trip.dart';
import 'src/data/model/user/user.dart';
import 'src/provider/search_location_provider.dart';
import 'src/provider/user_provider.dart';
import 'src/service/location_search_service.dart';
import 'src/service/location_service.dart';
export 'src/ui/widgets/widgets.dart';

// Services
final locationService = Provider((ref) => LocationService());

final locationSearchService = Provider((ref) => LocationSearchService());

final tokenRepository = Provider<TokenRepository>((ref) {
  return TokenRepository();
});

// Providers

final mapDisplayProvider = Provider((ref) {
  return MapDisplayProvider(ref.read);
});

final searchLocationProvider = StateNotifierProvider.autoDispose<
    SearchLocationNotifier, SearchLocationState>((ref) {
  return SearchLocationNotifier(ref.read);
});

final tripProvider =
    StateNotifierProvider<TripNotifier, Trip>((ref) => TripNotifier(ref.read));

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier(ref.read);
});

// Repositories

final authRepositoryProvider = Provider((ref) => AuthRepository(ref.read));

final userRepository = Provider((ref) => UserRepository(ref.read));

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
