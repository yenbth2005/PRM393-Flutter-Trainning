import 'Person.dart';

class Student extends Person {
  double math;
  double phy;
  double chem;

  Student({
    required super.id,
    required super.name,
    this.math = 0,
    this.phy = 0,
    this.chem = 0,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'] as String,
      name: json['name'] as String,
      math: (json['math'] as num).toDouble(),
      phy: (json['phy'] as num).toDouble(),
      chem: (json['chem'] as num).toDouble(),
    );
  }
  Student CopyStudent({String? id, String? name,double? math, double? phy, double? chem}){
    return new Student(
      id: id??this.id,
      name: name?? this.name,
      math: math?? this.math,
      phy: phy?? this.phy,
      chem: chem?? this.chem
    );
  }
}