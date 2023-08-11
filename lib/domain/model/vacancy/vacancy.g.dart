// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vacancy _$$_VacancyFromJson(Map<String, dynamic> json) => _$_Vacancy(
      id: json['id'] as int,
      company: json['company'] as String,
      technological: json['technological'] as String,
      contact: json['contact'] as String,
      chargeFullName: json['chargeFullName'] as String,
      timeToApply: json['timeToApply'] as String,
      workTime: json['workTime'] as String,
      area: json['area'] as String,
      salary: json['salary'] as String,
      addition: json['addition'] as String,
      purpose: json['purpose'] as String,
    );

Map<String, dynamic> _$$_VacancyToJson(_$_Vacancy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'technological': instance.technological,
      'contact': instance.contact,
      'chargeFullName': instance.chargeFullName,
      'timeToApply': instance.timeToApply,
      'workTime': instance.workTime,
      'area': instance.area,
      'salary': instance.salary,
      'addition': instance.addition,
      'purpose': instance.purpose,
    };
