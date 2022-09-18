import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/maxi_common.dart';

final transactionPinRepository = Provider((ref) {
  return TransactionPinRepository(ref.read);
});

class TransactionPinRepository implements TransactionPinRepositoryProtocol {
  TransactionPinRepository(this._read);

  final Reader _read;
  late final _api = _read(apiProvider);

  @override
  Future<APIResponse> createPin(String pin) {
    return _api.request(
      '/create-transaction-pin',
      data: {'transaction_pin': pin},
      method: ApiMethod.post,
    );
  }
}

abstract class TransactionPinRepositoryProtocol {
  Future<APIResponse> createPin(String pin);
}
