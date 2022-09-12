import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:maxi_common/helper/helper.dart';
import 'package:maxi_common/themes/themes.dart';


class AppFlushBar {
  AppFlushBar._();

  

  static Future<void> show(
    String message, {
    AppFlushBarType type = AppFlushBarType.info,
  }) async {
    switch (type) {
      case AppFlushBarType.info:
        await showInfo(message);
        break;
      case AppFlushBarType.warning:
        await showError(message);
        break;
      case AppFlushBarType.success:
        await showSuccess(message);
        break;
    }
  }

  static Future<void> showError(
    String msg, {
    FlushbarPosition position = FlushbarPosition.BOTTOM,
  }) async {
    await Flushbar(
      message: msg,
      icon: const Icon(
        FeatherIcons.alertOctagon,
        size: 28.0,
        color: AppColors.orangeRed,
      ),
      margin: const EdgeInsets.all(6.0),
      flushbarPosition: position,
      borderRadius: BorderRadius.circular(5),
      duration: const Duration(seconds: 3),
      // backgroundColor: !_isDarkMode ? AppColors.darkModeScaffold : Colors.white,
      messageColor:  Colors.black,
      leftBarIndicatorColor: AppColors.orangeRed,
    ).show(Get.context!);
  }

  static Future<void> showSuccess(
    String msg, {
    FlushbarPosition position = FlushbarPosition.BOTTOM,
  }) async {
    await Flushbar(
      message: msg,
      icon: const Icon(
        FeatherIcons.checkSquare,
        size: 28.0,
        color: Colors.green,
      ),
      margin: const EdgeInsets.all(6.0),
      flushbarPosition: position,
      borderRadius: BorderRadius.circular(5),
      duration: const Duration(seconds: 3),
      // backgroundColor: !_isDarkMode ? AppColors.darkModeScaffold : Colors.white,
      messageColor: Colors.black ,
      leftBarIndicatorColor: Colors.green,
    ).show(Get.context!);
  }

  static Future<void> showInfo(
    String msg, {
    FlushbarPosition position = FlushbarPosition.BOTTOM,
  }) async {
    await Flushbar(
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          offset: const Offset(0.0, 3.0),
          blurRadius: 3.0,
        ),
      ],
      borderRadius: BorderRadius.circular(5),
      isDismissible: false,
      icon: const Icon(
        FeatherIcons.info,
        color: AppColors.primary,
      ),
      flushbarPosition: position,
      margin: const EdgeInsets.all(6.0),
      // backgroundColor: !_isDarkMode ? AppColors.darkModeScaffold : Colors.white,
      messageColor:  Colors.black,
      message: msg,
      duration: const Duration(seconds: 3),
      leftBarIndicatorColor: AppColors.primary,
    ).show(Get.context!);
  }
}

enum AppFlushBarType { info, success, warning }
