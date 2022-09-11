part of 'themes.dart';

class AppStyle {
  AppStyle._();

    static const double appPaddingVal = 16;

  static const dialogBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(AppStyle.appPaddingVal),
    topRight: Radius.circular(AppStyle.appPaddingVal),
  );
}
