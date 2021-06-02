import 'package:flutter/material.dart';
import 'package:gpa/listofrows.dart';
import 'package:provider/provider.dart';

class ListOfGrade {
  List<DropdownMenuItem<String>> _Grades = [
    DropdownMenuItem(
      child: Text('A+'),
      value: 'A+',
    ),
    DropdownMenuItem(
      child: Text('A'),
      value: 'A',
    ),
    DropdownMenuItem(
      child: Text('B+'),
      value: 'B+',
    ),
    DropdownMenuItem(
      child: Text('B'),
      value: 'B',
    ),
    DropdownMenuItem(
      child: Text('C+'),
      value: 'C+',
    ),
    DropdownMenuItem(
      child: Text('C'),
      value: 'C',
    ),
    DropdownMenuItem(
      child: Text('D+'),
      value: 'D+',
    ),
    DropdownMenuItem(
      child: Text('D'),
      value: 'D',
    ),
    DropdownMenuItem(
      child: Text('F'),
      value: 'F',
    ),
  ];
  List<DropdownMenuItem<String>> getlist() {
    return _Grades;
  }
}
