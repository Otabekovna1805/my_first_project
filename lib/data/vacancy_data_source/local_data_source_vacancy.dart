import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSourceVacancy {
  String? read(StorageKeyVacancy key);
  Future<bool> store(StorageKeyVacancy key, String data);
  Future<bool> delete(StorageKeyVacancy key);
}
class LocalDataSourceVacancyImpl implements LocalDataSourceVacancy {
  final SharedPreferences db;
  LocalDataSourceVacancyImpl({required this.db});

  static Future<SharedPreferences> get init async {
    return SharedPreferences.getInstance();
  }

  @override
  Future<bool> delete(StorageKeyVacancy key) {
    return db.remove(key.name);
  }

  @override
  String? read(StorageKeyVacancy key) {
    return db.getString(key.name);
  }

  @override
  Future<bool> store(StorageKeyVacancy key, String data) {
    return db.setString(key.name, data);
  }

}

enum StorageKeyVacancy {
  vacancy
}