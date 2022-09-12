import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/src/data/model/user/user.dart';
import 'package:maxi_common/src/http/http.dart';

final userRemoteDataProvider =
    Provider((ref) => UserRemoteDataSource(ref.read));

class UserRemoteDataSource implements UserRemoteDataProtocol {
  UserRemoteDataSource(this._read);

  final Reader _read;
  late final _api = _read(apiProvider);

  @override
  Future<APIResponse> update(User user) async {
    return await _api.request(
      '/edit-profile',
      method: ApiMethod.post,
      data: user.toJson(),
    );
  }
}

abstract class UserRemoteDataProtocol {
  Future<APIResponse> update(User user);
}
