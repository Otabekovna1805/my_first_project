import 'package:flutter/material.dart';
import 'package:my_first_project/data/resume_data_source/local_data_source_resume.dart';

abstract class ThemeRepository {
  ThemeMode getMode();
  Future<void> setMode(ThemeMode mode);
}

class ThemeRepositoryImpl implements ThemeRepository {
  final LocalDataSourceResume dataSource;
  ThemeRepositoryImpl({required this.dataSource});

  @override
  ThemeMode getMode() {
    final data = dataSource.read(StorageKeyResume.mode) ?? ThemeMode.light.name;
    return _stringToMode(data);
  }

  @override
  Future<void> setMode(ThemeMode mode) {
    return dataSource.store(StorageKeyResume.mode, mode.name);
  }

  ThemeMode _stringToMode(String value) {
    switch(value) {
      case "light": return ThemeMode.light;
      case "dark": return ThemeMode.dark;
      case "system": return ThemeMode.system;
      default: return ThemeMode.light;
    }
  }


}

