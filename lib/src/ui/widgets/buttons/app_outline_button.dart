import 'package:flutter/material.dart';
import 'package:maxi_common/src/themes/themes.dart';

class AppOutlineButton extends StatefulWidget {
  const AppOutlineButton({
    Key? key,
    required this.onPressed,
    this.isLoadable = true,
    this.title = '',
    this.textSize = 15,
    this.padding = const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
    this.borderRadius = 5,
    this.bckgrndColor = Colors.transparent,
    this.fontColor = Colors.black,
    this.borderColor = Colors.red,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final bool isLoadable;
  final double textSize;
  final EdgeInsets padding;
  final Color bckgrndColor;
  final Color fontColor;
  final double borderRadius;
  final Color borderColor;

  @override
  State<AppOutlineButton> createState() => _AppOutlineButtonState();
}

class _AppOutlineButtonState extends State<AppOutlineButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (widget.isLoadable) {
          setState(() {
            isLoading = true;
          });
          await widget.onPressed();
          setState(() {
            isLoading = false;
          });
        } else {
          widget.onPressed();
        }
      },
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: widget.borderColor,
              width: 1.5,
              style: BorderStyle.solid,
            ),
          ),
          color: widget.bckgrndColor,
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: isLoading ? 0 : 1,
              child: Center(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.button.copyWith(
                    fontSize: widget.textSize,
                    fontWeight: FontWeight.w600,
                    color: widget.fontColor,
                  ),
                ),
              ),
            ),
            Center(
              child: Opacity(
                opacity: !isLoading ? 0 : 1,
                child: SizedBox.square(
                  dimension: widget.textSize,
                  child: CircularProgressIndicator(
                    color: widget.fontColor,
                    strokeWidth: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
