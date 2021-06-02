import 'package:flutter/material.dart';
import 'package:gpa/course.dart';
import 'package:gpa/course_data.dart';
import 'package:gpa/listofGrades.dart';
import 'package:provider/provider.dart';
import 'package:flutter_touch_spin/flutter_touch_spin.dart';

ListOfGrade s1 = ListOfGrade();
List greades = s1.getlist();
courseData coursedata= new courseData();

class Rowinfo extends StatefulWidget {
  // String grade;
  List theGrades;
  // int hours;
  Function delete1;
  course thecourse;

  Rowinfo({this.theGrades, this.delete1, this.thecourse});

  @override
  _RowinfoState createState() => _RowinfoState();
}

class _RowinfoState extends State<Rowinfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 100,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Course',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 80,
          child: DropdownButton<String>(
            isExpanded: true,
            value: widget.thecourse.grade, //A+
            items: greades, //all grades
            onChanged: (value) {
              setState(() {
                widget.thecourse.grade = value;
                Provider.of<courseData>(context,listen: false).updateCourses();
              });
            },
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            //width: 100,
            child: TextFormField(
              //controller: TextEditingController.fromValue('f'),
              keyboardType: TextInputType.number,
              initialValue: widget.thecourse.hourse.toString(),
              textAlign: TextAlign.center,
              //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 2,


              onChanged: (numofhours) {

                setState(() {

                  if(numofhours==null){
                    numofhours="0";
                    widget.thecourse.hourse=0;
                  }
                  else if(numofhours!=null){
                    widget.thecourse.hourse = num.tryParse(numofhours);

                  }
                  if(numofhours!=null){
                    Provider.of<courseData>(context,listen:false).updateCourses();
                  }

                });
              },
              decoration: InputDecoration(
                //  labelText:"whatever you want",
                  hintText: "Hours",
                  icon: Icon(Icons.access_time)),
            ),
          ),
        ),
//        IconButton(
//            icon: Icon(Icons.delete),
//            onPressed:(){
//              setState(() {
//
//              });
//            }
//            ),
      ],
    );
  }
}
