import 'dart:convert';

import 'package:http/http.dart' as http;

class PersonsList {
  List<Person> results;
  PersonsList({required this.results});

  factory PersonsList.fromJson(Map<String, dynamic> json) {
    var personsJson = json['results'] as List;

    List<Person> personsList =
        personsJson.map((i) => Person.fromJson(i)).toList();

    return PersonsList(results: personsList);
  }
}

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

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'] as String,
      gender: json['gender'] as String,
      birth_year: json['birth_year'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      eye_color: json['eye_color'] as String,
    );
  }
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
