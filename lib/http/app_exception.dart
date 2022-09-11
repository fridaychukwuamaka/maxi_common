import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maxi_common/widgets/widgets.dart';
part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  const factory AppException.connectivity() = AppExceptionConnectivity;

  const factory AppException.unauthorized() = AppExceptionUnauthorized;

  const factory AppException.errorWithMessage(String message) =
      AppExceptionErrorMessage;

  const factory AppException.error() = AppExceptionError;
}


extension AppExceptionExtension on AppException {
  Future<void> get show async {
    if (this is AppExceptionErrorMessage) {
      var error = this as AppExceptionErrorMessage;
      await AppFlushBar.showError(error.message);
    } else if (this is AppExceptionConnectivity) {
      await AppFlushBar.showError('No internet connection, try again later.');
    } else if (this is AppExceptionUnauthorized) {
      await AppFlushBar.showError('Unauthorized');
    } else if (this is AppExceptionError) {
      await AppFlushBar.showError('Something went wrong');
    }
  }
}
