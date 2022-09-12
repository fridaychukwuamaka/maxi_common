import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxi_common/themes/themes.dart';
import 'package:maxi_common/widgets/widgets.dart';

class DocumentSectector extends StatelessWidget {
  const DocumentSectector({
    Key? key,
    required this.hint,
    required this.label,
    this.required = true,
  }) : super(key: key);

  final String hint;
  final String label;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInput(
          hintText: hint,
          suffixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/doc.svg',
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: AppTextStyle.caption.copyWith(
              color: required ? AppColors.orangeRed : AppColors.appBlack,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
