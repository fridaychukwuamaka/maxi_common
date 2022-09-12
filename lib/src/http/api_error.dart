part of 'http.dart';

extension ApiError on DioError {
  APIResponse toApiError() {
    switch (type) {
      case DioErrorType.connectTimeout:
        return const APIResponse.error(AppException.connectivity());

      case DioErrorType.receiveTimeout:
        return const APIResponse.error(AppException.connectivity());

      case DioErrorType.sendTimeout:
        return const APIResponse.error(AppException.connectivity());

      case DioErrorType.other:
        return APIResponse.error(AppException.errorWithMessage(message));

      case DioErrorType.response:
        if (response!.statusCode == 401) {
          AppFlushBar.showError('Unauthorized. Please login again.');
          // Get.replaceAll([const SignUpRoute()]);
        }
        if (response!.statusCode! >= 400 && response!.statusCode! <= 499) {
          return APIResponse.error(AppException.errorWithMessage(
              response?.data['message'] ?? 'Error, please try again later'));
        }
        if (response!.statusCode! >= 500 && response!.statusCode! <= 599) {
          return const APIResponse.error(AppException.errorWithMessage(
              'Server error, please try again later'));
        }
        return APIResponse.error(AppException.errorWithMessage(message));
      default:
        return APIResponse.error(AppException.errorWithMessage(message));
    }
  }
}
