import 'package:flutter/material.dart';
import 'package:maxi_common/themes/themes.dart';


class AppRadioTile<T> extends StatelessWidget {
  const AppRadioTile({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final Function(T?)? onChanged;
  final T value;
  final T? groupValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
              color: AppColors.inputBckgndColor,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
