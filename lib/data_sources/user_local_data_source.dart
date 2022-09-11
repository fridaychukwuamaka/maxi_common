import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maxi_common/model/user.dart';
import 'package:maxi_common/repository/local_data.dart';
import 'package:maxi_common/db/boxes.dart';

final userLocalDataProvider = Provider((ref) => UserLocalDataSource());

class UserLocalDataSource implements LocalDataProtocol<User> {
  @override
  List<User> fetchAll() {
    return Boxes.userBox.values.toList();
  }

  @override
  Future<void> remove() {
    throw UnimplementedError();
  }

  @override
  Future<void> save(data, [int key = 0]) async {
    await Boxes.userBox.put(key, data);
  }

  @override
  Future<void> saveAll(items) async {
    await Boxes.userBox.addAll(items);
  }

  @override
  User? fetch([int key = 0]) {
    return Boxes.userBox.get(key);
  }
}
