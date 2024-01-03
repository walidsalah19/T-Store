import 'package:get_storage/get_storage.dart';

class LocalStorage {
  static final LocalStorage _localStorage = LocalStorage._internal();

  factory LocalStorage() {
    return _localStorage;
  }

  LocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T data) async {
    await _storage.write(key, data);
  }

  T? readData<T>(String key) {
    return _storage.read(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
