import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/src/http/http.dart';
import 'package:maxi_common/src/data/model/map_result/map_result.dart';

final locationSearchService = Provider((ref) => LocationSearchService());

class LocationSearchService {
  LocationSearchService();

  final String _url =
      'https://maps.googleapis.com/maps/api/place/textsearch/json';

  final String _key = 'AIzaSyBrHexR1jLEmYQRNSVfIl7Tjp_44UfMBu0';

  Future<Either<APIResponse, List<MapResult>>> showPlaces(String query) async {
    String lng = "en";
    String cntry = 'ng';

    try {
      var response = await Dio().get(
        '$_url?query=$query&region=$cntry&language=$lng&key=$_key',
      );
      List<MapResult> places = mapResultsFromJson(response.data['results']);
      return right(places);
    } on DioError catch (e) {
      return left(e.toApiError());
    }
  }
}
