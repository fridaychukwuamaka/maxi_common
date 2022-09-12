import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maxi_common/http/http.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loggedIn() = _LoggedIn;
  const factory AuthState.error(AppException error) = _Error;
}
