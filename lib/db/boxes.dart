import 'package:hive_flutter/hive_flutter.dart';
import 'package:maxi_common/model/user.dart';

class Boxes {
  static Box<String> tokenBox = Hive.box<String>(BoxKey.token);


  static Box<User> userBox = Hive.box<User>(BoxKey.user);
/*   static Future<void> clearAll() async {
    await referralBox.clear();
    await productsBox.clear();
    await referralSummaryBox.clear();
    await darkModeBox.clear();
    await faqBox.clear();
    await botBox.clear();
    await tokenBox.clear();
    await userProfileBox.clear();
  } */
}

abstract class BoxKey {
  static const String token = 'token';
    static const String user = 'user';
}
