import 'package:flutter/material.dart';
import 'package:maxi_common/src/extension/extension.dart';
import 'package:maxi_common/src/themes/themes.dart';
import 'package:maxi_common/src/ui/widgets/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:maxi_common/src/data/model/confirm_code.dart';

class CodeConfirmScreen extends StatefulWidget {
  const CodeConfirmScreen({
    Key? key,
    required this.confirmCode,
  }) : super(key: key);

  final ConfirmCode confirmCode;

  @override
  State<CodeConfirmScreen> createState() => _CodeConfirmScreenState();
}

class _CodeConfirmScreenState extends State<CodeConfirmScreen> {
  final TextEditingController _code = TextEditingController();
  bool error = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(AppStyle.appPaddingVal * 1.4),
        children: [
          Text(
            'Enter code\nsent to your number',
            style: AppTextStyle.headline7.copyWith(
              height: 1.4,
            ),
          ),
          const SizedBox(height: 13),
          Text.rich(
            TextSpan(
              text: 'We sent a code to  ',
              children: [
                TextSpan(
                  text: '+234${widget.confirmCode.phone}',
                  style: const TextStyle(
                    color: AppColors.blueberry,
                  ),
                ),
              ],
            ),
            style: AppTextStyle.caption.copyWith(
              height: 1.5,
              fontWeight: FontWeight.w600,
              color: AppColors.subtitleColor,
            ),
          ),
          const SizedBox(height: 60),
          Pinput(
            forceErrorState: error,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            obscureText: true,
            length: 4,
            controller: _code,
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            defaultPinTheme: PinTheme(
              width: 53,
              height: 53,
              textStyle: AppTextStyle.headline5,
              decoration: BoxDecoration(
                color: AppColors.inputBckgndColor,
                borderRadius: BorderRadius.circular(5),
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
          ),
          const SizedBox(height: 45),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppStyle.appPaddingVal),
            child: Center(
              child: Text.rich(
                TextSpan(
                  text:
                      'Kindly enter the code sent to your registered phone number. ',
                  children: [
                    TextSpan(
                      text: 'Didn’t get a code, click here to resend code.',
                      style: AppTextStyle.caption.copyWith(
                        color: AppColors.blueberry,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: AppTextStyle.caption.copyWith(
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                  color: AppColors.subtitleColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          AppButton(
            title: 'Confirm',
            onPressed: () async {
              setState(() => error = false);
              var overlay = AppOverlay.showLoading(context);
              var val = await widget.confirmCode.onConfirm(_code.text);
              val.when(
                success: (data, msg) =>
                    context.toNamed(widget.confirmCode.nextRoute),
                error: (err) {
                  setState(() => error = true);
                },
              );
              AppOverlay.dismiss(overlay);
            },
          ),
          const SizedBox(height: AppStyle.appPaddingVal),
        ],
      ),
    );
  }
}
