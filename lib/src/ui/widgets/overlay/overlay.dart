import 'package:flutter/material.dart';
import 'package:maxi_common/src/helper/helper.dart';
import 'package:maxi_common/src/ui/widgets/widgets.dart';
import 'package:maxi_common/src/themes/themes.dart';

class AppOverlay {
  static void dismiss(OverlayEntry overlay) {
    overlay.remove();
  }

  static Future<T?> showBottomModal<T>(Widget child) {
    return showModalBottomSheet<T>(
        context: Get.context!,
        shape: const RoundedRectangleBorder(
          borderRadius: AppStyle.dialogBorderRadius,
        ),
        builder: (BuildContext context) => child);
  }

  static OverlayEntry showLoading(BuildContext context) {
    OverlayState? overlay = Overlay.of(context);
    OverlayEntry entry = OverlayEntry(builder: (_) {
      return const Material(
        elevation: 0,
        color: Colors.black87,
        child: Center(
          child: AppLoadingIndicator(),
        ),
      );
    });
    overlay!.insert(entry);
    return entry;
  }
}
