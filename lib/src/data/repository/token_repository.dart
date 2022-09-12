import 'package:maxi_common/src/db/boxes.dart';

abstract class TokenRepositoryProtocol {
  Future<void> remove();
  Future<void> saveToken(String token);
  Future<String?> fetchToken();
}


class TokenRepository implements TokenRepositoryProtocol {
  @override
  Future<void> remove() async => Boxes.tokenBox.clear();

  @override
  Future<void> saveToken(String token) async =>
      Boxes.tokenBox.put('token', token);

  @override
  Future<String?> fetchToken() async => Boxes.tokenBox.get('token');
}
