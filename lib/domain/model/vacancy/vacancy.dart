import 'package:freezed_annotation/freezed_annotation.dart';
part 'vacancy.freezed.dart';
part 'vacancy.g.dart';

@freezed
class Vacancy with _$Vacancy {
  const factory Vacancy({
    required int id,
    required String company,
    required String technological,
    required String contact,
    required String chargeFullName,
    required String timeToApply,
    required String workTime,
    required String area,
    required String salary,
    required String addition,
    required String purpose
}) = _Vacancy;

  factory Vacancy.fromJson(Map<String, Object?> json) => _$VacancyFromJson(json);

}