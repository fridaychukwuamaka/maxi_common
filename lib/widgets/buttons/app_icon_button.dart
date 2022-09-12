import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.radius,
    required this.icon,
    this.color = Colors.white,
    this.onPressed,
    this.elevation = true,
    this.borderRaduis = BorderRadius.zero,
  }) : super(key: key);

  final double radius;
  final Widget icon;
  final Function()? onPressed;
  final Color color;
  final bool elevation;
  final BorderRadiusGeometry borderRaduis;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          shape: borderRaduis == BorderRadius.zero
              ? BoxShape.circle
              : BoxShape.rectangle,
          color: color,
          borderRadius: borderRaduis == BorderRadius.zero ? null : borderRaduis,
          boxShadow: elevation
              ? [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ]
              : null,
        ),
        child: icon,
      ),
    );
  }
}
