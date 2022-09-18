import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/maxi_common.dart';
import 'package:maxi_common/src/provider/transaction_pin_provider.dart';
import 'package:pinput/pinput.dart';

class VerifyTransactionPin extends StatelessWidget {
  const VerifyTransactionPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: AppStyle.dialogBorderRadius,
      ),
      child: Padding(
        padding:
            const EdgeInsets.all(AppStyle.appPaddingVal).copyWith(bottom: 0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(
                  'Transaction Pin',
                  style: AppTextStyle.button,
                ),
                const SizedBox(height: 30),
                Consumer(
                  builder: (context, ref, _) {
                    return _Input(
                      code: code,
                      error: ref.read(transactionPinProvider),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    9,
                    (index) => _Button(
                      constraints: constraints,
                      value: (index + 1).toString(),
                      onPressed: (v) {
                        code.text += v;
                      },
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _Button(
                      constraints: constraints,
                      value: '',
                      color: Colors.transparent,
                      child: const SizedBox.shrink(),
                      onPressed: (v) {},
                    ),
                    _Button(
                      constraints: constraints,
                      value: '0',
                      onPressed: (v) {
                        code.text += v;
                      },
                    ),
                    _Button(
                      color: Colors.transparent,
                      constraints: constraints,
                      value: '',
                      onPressed: (v) {
                        code.text =
                            code.text.substring(0, code.text.length - 1);
                      },
                      child: const Icon(Icons.backspace_outlined),
                    ),
                  ],
                ),
                SizedBox(height: context.bottom),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CreateTransactionPin extends StatelessWidget {
  const CreateTransactionPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: AppStyle.dialogBorderRadius,
      ),
      child: Padding(
        padding:
            const EdgeInsets.all(AppStyle.appPaddingVal).copyWith(bottom: 0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(
                  'Create Transaction Pin',
                  style: AppTextStyle.button,
                ),
                const SizedBox(height: 30),
                Consumer(
                  builder: (context, ref, _) {
                    return _Input(
                      code: code,
                      error: ref.watch(transactionPinProvider),
                      onTap: (v) async {
                        var overlay = AppOverlay.showLoading(context);
                        await ref
                            .read(transactionPinProvider.notifier)
                            .createPin(v);
                        AppOverlay.dismiss(overlay);
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    9,
                    (index) => _Button(
                      constraints: constraints,
                      value: (index + 1).toString(),
                      onPressed: (v) {
                        code.text += v;
                      },
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _Button(
                      constraints: constraints,
                      value: '',
                      color: Colors.transparent,
                      child: const SizedBox.shrink(),
                      onPressed: (v) {},
                    ),
                    _Button(
                      constraints: constraints,
                      value: '0',
                      onPressed: (v) {
                        code.text += v;
                      },
                    ),
                    _Button(
                      color: Colors.transparent,
                      constraints: constraints,
                      value: '',
                      onPressed: (v) {
                        code.text = code.text.substring(
                          0,
                          code.text.length - 1,
                        );
                      },
                      child: const Icon(Icons.backspace_outlined),
                    ),
                  ],
                ),
                SizedBox(height: context.bottom),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Input extends StatelessWidget {
  const _Input({
    Key? key,
    required this.code,
    this.error = true,
    this.onTap,
  }) : super(key: key);

  final TextEditingController code;
  final bool error;
  final Function(String)? onTap;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      length: 4,
      controller: code,
      forceErrorState: error,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      defaultPinTheme: PinTheme(
        width: 53,
        height: 53,
        textStyle: AppTextStyle.headline5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black26,
            width: 1,
          ),
        ),
      ),
      errorPinTheme: PinTheme(
        width: 50,
        height: 50,
        textStyle: AppTextStyle.headline5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onCompleted: onTap,
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.constraints,
    required this.value,
    this.onPressed,
    this.color,
    this.child,
  }) : super(key: key);

  final BoxConstraints constraints;
  final String value;
  final ValueChanged<String>? onPressed;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) onPressed!(value);
      },
      child: Container(
        width: (constraints.maxWidth / 3) - 10,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Opacity(
              opacity: 0,
              child: Text(
                '7',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            child ??
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 20,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
