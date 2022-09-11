part of 'themes.dart';

class AppStyle {
  AppStyle._();

  static const double appPaddingVal = 16;

  static const dialogBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(AppStyle.appPaddingVal),
    topRight: Radius.circular(AppStyle.appPaddingVal),
  );

  static const modalDecoration = BoxDecoration(
    borderRadius: AppStyle.dialogBorderRadius,
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        offset: Offset(0, 6),
      ),
    ],
  );
}
