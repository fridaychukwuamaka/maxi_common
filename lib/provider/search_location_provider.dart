import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/http/http.dart';
import 'package:maxi_common/model/map_result.dart';
import 'package:maxi_common/service/location_search_service.dart';

import '../state/flow.dart';

typedef SearchLocationState = Flow<APIResponse, List<MapResult>>;

final searchLocationProvider = StateNotifierProvider.autoDispose<
    SearchLocationNotifier, SearchLocationState>((ref) {
  return SearchLocationNotifier(ref.read);
});

class SearchLocationNotifier extends StateNotifier<SearchLocationState> {
  SearchLocationNotifier(this._read)
      : super(const SearchLocationState.initial());

  final Reader _read;

  late final locationSearch = _read(locationSearchService);

  Future<void> search(String query) async {
    state = const SearchLocationState.loading();
    var result = await locationSearch.showPlaces(query);
    result.fold(
      (l) => state = SearchLocationState.failure(error: l),
      (r) => state = SearchLocationState.success(result: r),
    );
  }
}
