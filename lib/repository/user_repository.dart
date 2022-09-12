import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/data_sources/user_local_data_source.dart';
import 'package:maxi_common/data_sources/user_remote_data_source.dart';
import 'package:maxi_common/model/user/user.dart';
import 'package:maxi_common/http/http.dart';

final userRepository = Provider((ref) => UserRepository(ref.read));

class UserRepository {
  UserRepository(this._read);

  final Reader _read;
  late final _localSource = _read(userLocalDataProvider);
  late final _remoteSource = _read(userRemoteDataProvider);

  Future<void> saveUser(User user) async {
    await _localSource.save(user);
  }

  User getUser() {
    return _localSource.fetch() ?? User.empty();
  }

  Future<Either<AppException, User>> updateUser(User user) async {
    var response = await _remoteSource.update(user);
    return response.when(
      success: (data, msg) async {
        try {
          await _localSource.save(user);
        } catch (e) {
          print(e);
        }
        return right(user);
      },
      error: (err) => left(err),
    );
  }
}
