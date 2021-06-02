import 'package:flutter/cupertino.dart';
import 'package:gpa/course.dart';
import 'package:flutter/foundation.dart';
import 'package:min_id/min_id.dart';

class courseData extends ChangeNotifier {
  List<course> allcourses = [
    course(grade: "A", hourse: 3,id:MinId.getId("ab") ),
    course(grade: "B", hourse: 3,id:MinId.getId("ab") ),
    course(grade: "C", hourse: 3,id:MinId.getId("ab") ),
    course(grade: "D", hourse: 3,id:MinId.getId("ab") ),
  ];

  void addcourse(String thegrade, int hourse) {
    course s = course(grade: thegrade, hourse: hourse);
    allcourses.add(s);
    notifyListeners();
  }

  void removecourse(course s) {
    allcourses.remove(s);
    notifyListeners();
  }
  void updateCourses(){
    notifyListeners();
  }
}