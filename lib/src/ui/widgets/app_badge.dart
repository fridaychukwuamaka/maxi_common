import 'package:flutter/material.dart';
import 'package:maxi_common/src/themes/themes.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({
    Key? key,
    this.radius = 14.5,
    this.borderRadius = 5,
    this.child,
    this.color = AppColors.primary,
    this.onTap,
  }) : super(key: key);

  final double radius;
  final double borderRadius;
  final Widget? child;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        width: radius * 2,
        height: radius * 2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
