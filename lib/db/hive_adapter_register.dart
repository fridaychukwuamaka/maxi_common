import 'package:hive_flutter/hive_flutter.dart';
import 'package:maxi_common/model/user.dart';
import 'package:maxi_common/enums/gender.dart';
import 'boxes.dart';

class HiveAdapterRegister {
  static Future<void> register() async {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(GenderAdapter());

    await Hive.openBox<User>(BoxKey.user);
    await Hive.openBox<String>(BoxKey.token);
  }
}
