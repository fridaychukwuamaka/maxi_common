import 'package:maxi_common/http/http.dart';

class ConfirmCode {
  const ConfirmCode({
    required this.phone,
    required this.nextRoute,
    required this.onConfirm,
  });

  final String phone;
  final String nextRoute;
  final Future<APIResponse> Function(String) onConfirm;
}
