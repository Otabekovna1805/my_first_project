import 'dart:convert';
import 'package:my_first_project/data/vacancy_data_source/local_data_source_vacancy.dart';
import 'package:my_first_project/domain/model/vacancy/vacancy.dart';


abstract class VacancyRepository {
  Future<bool> storeVacancy(Vacancy vacancy);
  Future<bool> deleteVacancy(Vacancy vacancy);
  List<Vacancy> readVacancy();
  Future<bool> cachedVacancy();
}

class VacancyRepositoryImpl implements VacancyRepository {
  final LocalDataSourceVacancy localDataSource;
  VacancyRepositoryImpl({required this.localDataSource});

  @override
  Future<bool> cachedVacancy() async {
    return localDataSource.delete(StorageKeyVacancy.vacancy);
  }

  @override
  Future<bool> deleteVacancy(Vacancy vacancy) {
    final list = readVacancy();
    list.remove(vacancy);
    final json = list.map((e) => e.toJson()).toList();
    final data = jsonEncode(json);
    return localDataSource.store(StorageKeyVacancy.vacancy, data);
  }

  @override
  List<Vacancy> readVacancy() {
    String data = localDataSource.read(StorageKeyVacancy.vacancy) ?? "[]";
    final json = jsonDecode(data) as List;
    return json.map((e) => Vacancy.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<bool> storeVacancy(Vacancy vacancy) {
    final list = readVacancy();
    list.add(vacancy);
    final json = list.map((e) => e.toJson()).toList();
    final data = jsonEncode(json);
    return localDataSource.store(StorageKeyVacancy.vacancy, data);
  }

}