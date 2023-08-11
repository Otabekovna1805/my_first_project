import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_resume.g.dart';
part 'add_resume.freezed.dart';

@freezed
class Resume with _$Resume {
  const factory Resume({
    required int id,
    required String fullName,
    required String age,
    required String technological,
    required String contact,
    required String phoneNumber,
    required String area,
    required String salary,
    required String timeToApply,
    required String addition,
    required String purpose
}) = _Resume;

  factory Resume.fromJson(Map<String, Object?> json) => _$ResumeFromJson(json);
}
