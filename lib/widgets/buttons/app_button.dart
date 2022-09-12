import 'package:flutter/material.dart';
import 'package:maxi_common/themes/themes.dart';
import 'package:maxi_common/widgets/widgets.dart';


class AppButton extends StatefulWidget {
  const AppButton({
    Key? key,
    required this.onPressed,
    this.isLoadable = false,
    this.title = '',
    this.textSize = 15,
    this.padding = const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
    this.borderRadius = 5,
    this.bckgrndColor = AppColors.primary,
    this.fontColor = AppColors.appBlack,
    this.elevation = true,
    this.width = double.infinity,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final bool isLoadable;
  final double textSize;
  final double? width;
  final EdgeInsets padding;
  final Color bckgrndColor;
  final Color fontColor;
  final bool elevation;
  final double borderRadius;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        late OverlayEntry overlay;
        if (widget.isLoadable) {
          try {
            overlay = AppOverlay.showLoading(context);
            await widget.onPressed();
            AppOverlay.dismiss(overlay);
          } catch (e) {
            AppOverlay.dismiss(overlay);
          }
        } else {
          widget.onPressed();
        }
      },
      child: Container(
        padding: widget.padding * 0.8,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.bckgrndColor,
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
          boxShadow: widget.elevation
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 4),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ]
              : null,
        ),
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
    );
  }
}
