import 'package:flutter/material.dart';
import 'package:maxi_common/src/ui/widgets/widgets.dart';

class ModalBackBtn extends StatelessWidget {
  const ModalBackBtn({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: AppButton(
        elevation: false,
        textSize: 12,
        borderRadius: 3,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        onPressed: onPressed,
        width: null,
        title: 'Back',
      ),
    );
  }
}
