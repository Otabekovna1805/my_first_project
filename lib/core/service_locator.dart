import 'package:flutter/material.dart';
import 'package:my_first_project/data/resume_data_source/local_data_source_resume.dart';
import 'package:my_first_project/data/vacancy_data_source/local_data_source_vacancy.dart';
import 'package:my_first_project/domain/repository/resume_repository.dart';
import 'package:my_first_project/domain/repository/theme_mode_repository.dart';
import 'package:my_first_project/domain/repository/vacancy_repository.dart';

late final ResumeRepository repositoryResume;
late final VacancyRepository repositoryVacancy;
late final ThemeRepository themeRepository;
late final ValueNotifier<ThemeMode> mode;

Future<void> serviceLocator() async {
  final resume = await LocalDataSourceResumeImpl.init;
  final vacancy = await LocalDataSourceVacancyImpl.init;

  LocalDataSourceResume localDataSourceResume = LocalDataSourceResumeImpl(db: resume);
  LocalDataSourceVacancy localDataSourceVacancy = LocalDataSourceVacancyImpl(db: vacancy);

  repositoryResume = ResumeRepositoryImpl(localDataSource: localDataSourceResume);
  repositoryVacancy = VacancyRepositoryImpl(localDataSource: localDataSourceVacancy);

  themeRepository = ThemeRepositoryImpl(dataSource: localDataSourceResume);

  mode = ValueNotifier(themeRepository.getMode());
}