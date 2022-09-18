import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/maxi_common.dart';
import 'package:maxi_common/src/data/repository/transaction_pin_repository.dart';

final transactionPinProvider =
    StateNotifierProvider.autoDispose<TransactionPinNotifier, bool>((ref) {
  return TransactionPinNotifier(ref.read);
});

class TransactionPinNotifier extends StateNotifier<bool> {
  TransactionPinNotifier(this._read) : super(false);

  final Reader _read;
  late final _repo = _read(transactionPinRepository);

  createPin(String pin) async {
    print(pin);
    var result = await _repo.createPin(pin);
    result.when(
      success: (data, msg) {
        AppFlushBar.showSuccess(msg!);
        state = false;
      },
      error: (err) {
        err.show;
        state = true;
      },
    );
  }
}
