import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxi_common/themes/themes.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

class PassportSelector extends StatelessWidget {
  const PassportSelector({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(
              color: AppColors.inputBckgndColor,
              borderRadius: BorderRadius.circular(7),
              border: RDottedLineBorder.all(color: AppColors.silverSand)),
          child: Center(
            child: SvgPicture.asset('assets/icons/image_placeholder.svg'),
          ),
        ),
        const SizedBox(height: 10),
        Text(label)
      ],
    );
  }
}
