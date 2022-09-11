part of 'helper.dart';

class Get {
  Get._();

  static final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  static BuildContext? get context => _key.currentContext;
}
