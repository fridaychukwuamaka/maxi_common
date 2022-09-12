// import 'package:maxi_mobile/shared/http/api_error.dart';
// import 'package:maxi_mobile/shared/http/app_exception.dart';
// import 'package:maxi_mobile/shared/repository/token_repository.dart';
part of 'http.dart';

abstract class ApiInterface {
  Future<APIResponse> request(String url);
}

final apiProvider = Provider<ApiProvider>((ref) => ApiProvider(ref.read));

class ApiProvider implements ApiInterface {
  final Reader _read;
  late Dio _dio;

  late final _tokenRepo = _read(tokenRepository);

  ApiProvider(this._read) {
    _dio = Dio(
      BaseOptions(
        sendTimeout: 5000,
        baseUrl: 'https://maxi-api-v2.herokuapp.com',
        receiveTimeout: 5000,
      ),
    );
  }

  final Map<String, dynamic> _headers = {};

  @override
  Future<APIResponse> request(
    String url, {
    ApiMethod method = ApiMethod.get,
    dynamic data,
  }) async {
    await _getToken();
    try {
      var response = await _dio.request(
        url,
        data: data,
        options: Options(
          method: method.name.toUpperCase(),
          headers: _headers,
        ),
      );
      if (response.data['status']) {
        return APIResponse.success(
          response.data['data'],
          msg: response.data['message'],
        );
      } else {
        return APIResponse.error(
          AppException.errorWithMessage(response.data['message'] ?? ''),
        );
      }
    } on DioError catch (e) {
      return e.toApiError();
    }
  }

  Future<void> _getToken() async {
    final appToken = await _tokenRepo.fetchToken();
    if (appToken != null) {
      _headers['x-access-token'] = appToken;
    }
  }
}

enum ApiMethod { get, post, put, delete }
