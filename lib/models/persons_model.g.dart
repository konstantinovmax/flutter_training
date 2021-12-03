// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsList _$PersonsListFromJson(Map<String, dynamic> json) => PersonsList(
      results: (json['results'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonsListToJson(PersonsList instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['name'] as String,
      gender: json['gender'] as String,
      birth_year: json['birth_year'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      eye_color: json['eye_color'] as String,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'birth_year': instance.birth_year,
      'height': instance.height,
      'mass': instance.mass,
      'eye_color': instance.eye_color,
    };
