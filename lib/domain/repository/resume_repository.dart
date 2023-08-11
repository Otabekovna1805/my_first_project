import 'dart:convert';
import 'package:my_first_project/data/resume_data_source/local_data_source_resume.dart';
import 'package:my_first_project/domain/model/resume/add_resume.dart';


abstract class ResumeRepository {
  Future<bool> storeResume(Resume resume);
  Future<bool> deleteResume(Resume resume);
  List<Resume> readResume();
  Future<bool> cachedResume();
}

class ResumeRepositoryImpl implements ResumeRepository {
  final LocalDataSourceResume localDataSource;
  ResumeRepositoryImpl({required this.localDataSource});

  @override
  Future<bool> cachedResume() async {
    return localDataSource.delete(StorageKeyResume.vacancy);
  }

  @override
  Future<bool> deleteResume(Resume resume) {
    final list = readResume();
    list.remove(resume);
    final json = list.map((e) => e.toJson()).toList();
    final data = jsonEncode(json);
    return localDataSource.store(StorageKeyResume.vacancy, data);
  }

  @override
  List<Resume> readResume() {
    String data = localDataSource.read(StorageKeyResume.vacancy) ?? "[]";
    final json = jsonDecode(data) as List;
    return json.map((e) => Resume.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<bool> storeResume(Resume resume) {
    final list = readResume();
    list.add(resume);
    final json = list.map((e) => e.toJson()).toList();
    final data = jsonEncode(json);
    return localDataSource.store(StorageKeyResume.vacancy, data);
  }

}