
abstract class LocalDataProtocol<T> {
  Future<void> remove();
  Future<void> save(T data, [int key = 0]);
  Future<void> saveAll(List<T> items);
  T? fetch([int key = 0]);
  List<T>? fetchAll();
}

