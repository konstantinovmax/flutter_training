import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

import 'package:http/http.dart' as http;

part 'persons_model.g.dart';

@JsonSerializable()
class PersonsList {
  List<Person> results;
  PersonsList({required this.results});

  factory PersonsList.fromJson(Map<String, dynamic> json) =>
      _$PersonsListFromJson(json);

  Map<String, dynamic> toJson() => _$PersonsListToJson(this);
}

@JsonSerializable()
class Person {
  final String name;
  final String gender;
  final String birth_year;
  final String height;
  final String mass;
  final String eye_color;

  Person({
    required this.name,
    required this.gender,
    required this.birth_year,
    required this.height,
    required this.mass,
    required this.eye_color,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

Future<PersonsList> getPersonsList() async {
  const url = 'https://swapi.dev/api/people/';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return PersonsList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
