import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxi_common/themes/themes.dart';

class PhoneNumInput extends StatelessWidget {
  const PhoneNumInput({
    Key? key,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.inputBckgndColor,
        ),
        child: Row(
          children: [
            Row(
              children: [
                const SizedBox(width: 15),
                SvgPicture.asset(
                  'assets/icons/nigeria_flag.svg',
                  height: 16,
                  width: 24,
                ),
                const SizedBox(width: 8),
                const Text('+234'),
                const SizedBox(width: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: VerticalDivider(
                    width: 0,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  contentPadding: const EdgeInsets.symmetric(vertical: 17)
                      .copyWith(left: 0),
                  labelStyle: AppTextStyle.bodyText1,
                  border: InputBorder.none,
                  fillColor: Colors.transparent,
                  filled: true,
                ),
                style: AppTextStyle.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppInput extends StatefulWidget {
  const AppInput({
    Key? key,
    this.label,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.isRounded = false,
    this.counterText,
    this.controller,
    this.filledColor = AppColors.inputBckgndColor,
    this.readOnly = false,
    this.maxLines = 1,
    this.validator,
    this.autovalidateMode,
    this.prefexIcon,
    this.contentPadding = const EdgeInsets.fromLTRB(15, 20, 19, 20),
    this.borderSide = const BorderSide(
      width: 1,
      color: Colors.transparent,
    ),
    this.borderRadius = 5,
    this.initialValue,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final bool isRounded;
  final String? hintText;
  final String? counterText;
  final bool obscureText;
  final bool readOnly;
  final EdgeInsetsGeometry? contentPadding;
  final Color filledColor;
  final Widget? suffixIcon;
  final Widget? prefexIcon;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final BorderSide borderSide;
  final double borderRadius;
  final TextAlign textAlign;
  final int? maxLength, maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final String? initialValue;
  final Function()? onTap;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool obscureText = false;

  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  void _onObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: widget.borderSide,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? Text(
                widget.label!,
                style: AppTextStyle.bodyText2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox.shrink(),
        SizedBox(
          height: widget.label != null ? 3 : 0,
        ),
        TextFormField(
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          onFieldSubmitted: widget.onFieldSubmitted,
          onChanged: widget.onChanged,
          obscureText: obscureText,
          readOnly: widget.readOnly,
          initialValue: widget.initialValue,
          textAlign: widget.textAlign,
          autovalidateMode: widget.autovalidateMode,
          maxLines: widget.maxLines,
          controller: widget.controller,
          maxLength: widget.maxLength,
          validator: widget.validator,
          onTap: widget.onTap,
          focusNode: widget.focusNode,
          keyboardType: widget.keyboardType,
          style: AppTextStyle.bodyText2.copyWith(
            fontWeight: FontWeight.w500,
          ),
          cursorColor: AppColors.appBlack,
          decoration: InputDecoration(
            suffixIcon: widget.obscureText == true
                ? GestureDetector(
                    onTap: _onObscureText,
                    child: Icon(
                      obscureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      size: 19,
                    ),
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefexIcon,
            contentPadding: widget.contentPadding,
            hintText: widget.hintText,
            counterText: widget.counterText,
            border: outlineInputBorder,
            fillColor: widget.filledColor,
            filled: true,
            focusColor: AppColors.inputBckgndColor,
            hintStyle: AppTextStyle.bodyText2.copyWith(
              color: const Color(0xFFC4C4C4),
            ),
            focusedBorder: widget.borderSide != BorderSide.none
                ? outlineInputBorder.copyWith(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  )
                : null,
            enabledBorder: outlineInputBorder,
          ),
        ),
      ],
    );
  }
}
