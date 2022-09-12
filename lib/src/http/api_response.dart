import 'package:freezed_annotation/freezed_annotation.dart';
import 'app_exception.dart';
part 'api_response.freezed.dart';

@freezed
class APIResponse<T> with _$APIResponse<T> {
  const factory APIResponse.success(T data, {String? msg}) = APISuccess<T>;
  const factory APIResponse.error(AppException exception) = APIError;
}
