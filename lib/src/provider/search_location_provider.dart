import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/maxi_common.dart';

typedef SearchLocationState = Flow<APIResponse, List<MapResult>>;


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
