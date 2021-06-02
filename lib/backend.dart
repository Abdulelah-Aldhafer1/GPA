import 'package:gpa/course_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gpa/course.dart';
import 'package:min_id/min_id.dart';

class functions   {

 final id = MinId.getId();

String fu(List <course> l) {
    int totalOfHours=0;
    double totalOfPoints=0;
    try{
    for (var i = 0; i < l.length; i++) {

      if(l[i].grade=="A+"){
        totalOfPoints+=l[i].hourse*5;
      }
      else if(l[i].grade=="A"){
        if(l[i].hourse!=null){
          totalOfPoints+=l[i].hourse*4.75;}

      }else if(l[i].grade=="B+"){
        totalOfPoints+=l[i].hourse*4.5;

      }else if(l[i].grade=="B"){
        totalOfPoints+=l[i].hourse*4;

      }else if(l[i].grade=="C+"){
        totalOfPoints+=l[i].hourse*3.5;

      }else if(l[i].grade=="C"){
        totalOfPoints+=l[i].hourse*3;

      }else if(l[i].grade=="D+"){
        totalOfPoints+=l[i].hourse*2.5;

      }else if(l[i].grade=="D"){
        totalOfPoints+=l[i].hourse*2;

      }else if(l[i].grade=="F"){
        totalOfPoints+=l[i].hourse*1;

      }
      totalOfHours+= l[i].hourse;
    }}
    catch(e){

    }
    //print(l[2].grade);
    double gpa=totalOfPoints/totalOfHours;
    String number = gpa.toStringAsFixed(2);
    print(number);
    return number;

  }
  totalGpa(int currentHours, double currentPoints){
  double totalPoint=currentPoints;
  int totalHours=currentHours;

  }

}