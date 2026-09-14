import 'Student.dart';
import 'Teacher.dart';

enum PersonType {
  Student,
  Teacher
}

class Person {
  final String id;
  final String name;

  Person({
    required this.id,
    required this.name,
  });

  factory Person.create(PersonType pType, String id, String name) {
    if (pType == PersonType.Teacher) {
      return Teacher(
        id: id,
        name: name,
      );
    } else {
      return Student(
        id: id,
        name: name,
      );
    }
  }
}