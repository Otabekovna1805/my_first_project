import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSourceResume {
  String? read(StorageKeyResume key);
  Future<bool> store(StorageKeyResume key, String data);
  Future<bool> delete(StorageKeyResume key);
}
class LocalDataSourceResumeImpl implements LocalDataSourceResume {
  final SharedPreferences db;
  LocalDataSourceResumeImpl({required this.db});

  static Future<SharedPreferences> get init async {
    return SharedPreferences.getInstance();
  }

  @override
  Future<bool> delete(StorageKeyResume key) {
    return db.remove(key.name);
  }

  @override
  String? read(StorageKeyResume key) {
    return db.getString(key.name);
  }

  @override
  Future<bool> store(StorageKeyResume key, String data) {
    return db.setString(key.name, data);
  }

}

enum StorageKeyResume {
  vacancy,
  mode
}