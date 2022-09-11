part of 'themes.dart';

class AppTextStyle {
  AppTextStyle._();

  static final String _font = GoogleFonts.montserrat().fontFamily!;

  static TextStyle bodyText1 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 16 * 0.90,
  );
  static TextStyle smallest = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w800,
    fontSize: 9 * 0.90,
  );
  static TextStyle small = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w800,
    fontSize: 10 * 0.90,
  );
  static TextStyle bodyText2 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.normal,
    fontSize: 15 * 0.90,
  );
  static TextStyle subtitle2 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 14 * 0.90,
  );
  static TextStyle caption = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 13 * 0.90,
  );
  static TextStyle subtitle1 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.normal,
    fontSize: 16 * 0.90,
  );
  static TextStyle headline5 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 20 * 0.90,
  );
  static TextStyle headline4 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 18 * 0.90,
  );
  static TextStyle headline6 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 24 * 0.90,
  );
  static TextStyle button = TextStyle(
    fontSize: 17 * 0.90,
    fontWeight: FontWeight.w700,
    fontFamily: _font,
  );
  static TextStyle headline2 = TextStyle(
    fontSize: 34 * 0.90,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
  );
}
