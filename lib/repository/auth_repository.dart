import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/http/http.dart';


final authRepositoryProvider = Provider((ref) => AuthRepository(ref.read));

class AuthRepository implements AuthRepositoryProtocol {
  AuthRepository(this._reader);

  final Reader _reader;

  late final _api = _reader(apiProvider);

  @override
  Future<APIResponse> signup(String phone) {
    return _api.request(
      '/signup',
      method: ApiMethod.post,
      data: {'phone_number': '+234$phone'},
    );
  }

  @override
  Future<APIResponse> login(String email, String password) {
    return _api.request(
      '/signin',
      method: ApiMethod.post,
      data: {'email': email, 'password': password},
    );
  }

  @override
  Future<APIResponse> verifyOtp(String otp) {
    return _api.request(
      '/verify-otp',
      method: ApiMethod.post,
      data: {'otpcode': otp},
    );
  }
  
  @override
  Future<APIResponse> setEmailAndPass(String email, String password) {
    return _api.request(
      '/set-email-and-password',
      method: ApiMethod.post,
      data: {'email': email, 'password': password},
    );
  }
}

abstract class AuthRepositoryProtocol {
  Future<APIResponse> signup(String phone);
  Future<APIResponse> login(String phone, String password);
  Future<APIResponse> verifyOtp(String otp);
  Future<APIResponse> setEmailAndPass(String email, String password);
}
