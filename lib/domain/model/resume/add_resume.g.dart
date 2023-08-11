// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Resume _$$_ResumeFromJson(Map<String, dynamic> json) => _$_Resume(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      age: json['age'] as String,
      technological: json['technological'] as String,
      contact: json['contact'] as String,
      phoneNumber: json['phoneNumber'] as String,
      area: json['area'] as String,
      salary: json['salary'] as String,
      timeToApply: json['timeToApply'] as String,
      addition: json['addition'] as String,
      purpose: json['purpose'] as String,
    );

Map<String, dynamic> _$$_ResumeToJson(_$_Resume instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'age': instance.age,
      'technological': instance.technological,
      'contact': instance.contact,
      'phoneNumber': instance.phoneNumber,
      'area': instance.area,
      'salary': instance.salary,
      'timeToApply': instance.timeToApply,
      'addition': instance.addition,
      'purpose': instance.purpose,
    };
