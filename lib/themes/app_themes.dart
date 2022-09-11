part of'themes.dart';



class AppThemes {
  AppThemes._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    primaryColor: AppColors.primary,
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: AppColors.scaffoldColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyle.button.copyWith(color: Colors.black),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.appBlack),
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyle.bodyText1,
      bodyText2: AppTextStyle.bodyText2,
      button: AppTextStyle.button,
      headline5: AppTextStyle.headline5,
      caption: AppTextStyle.caption,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.selected)
              ? AppColors.primary
              : AppColors.silverSand;
        },
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.appBlack,
      secondary: AppColors.primary,
      onSecondary: AppColors.appBlack,
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onSurface: Colors.black,
    ),
  );
}
