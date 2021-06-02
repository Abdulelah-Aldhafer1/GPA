import 'package:flutter/material.dart';
import 'package:min_id/min_id.dart';
final id = MinId.getId();
class course{
  final stringId = MinId.getId('3{w}-3{w}-3{w}');
  int hourse;
String grade;
String id;

course({this.grade,this.hourse,this.id});


}