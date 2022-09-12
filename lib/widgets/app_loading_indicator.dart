import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:maxi_common/themes/themes.dart';



class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoadingAnimationWidget.horizontalRotatingDots(
        color: AppColors.primary,
        size: 40,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
