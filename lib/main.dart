import 'package:flutter/material.dart';
import 'package:gpa/backend.dart';
import 'package:gpa/course_data.dart';
import 'package:gpa/listofGrades.dart';
import 'package:gpa/roe_data.dart';
import 'package:provider/provider.dart';
import 'package:gpa/screen.dart';
import 'package:gpa/course.dart';
import 'package:min_id/min_id.dart';

ListOfGrade Ob = ListOfGrade();
void main() {
  runApp(aa());

}

class aa extends StatefulWidget {
  @override
  _aaState createState() => _aaState();
}

class _aaState extends State<aa> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create:(context)=> courseData(),
      child: MaterialApp(
        home:gpaScreen(),
      ),
    );
  }
}


class therows extends StatefulWidget {
  @override
  _therowsState createState() => _therowsState();
}

class _therowsState extends State<therows> {
  @override
  String grade = 'A+';

  List<DropdownMenuItem<String>> theGrades = Ob.getlist();

  Widget build(BuildContext context) {
    return Consumer<courseData>(
      builder: (context,coursedata,child) {
        return Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount:Provider.of<courseData>(context).allcourses.length,
              itemBuilder: (context, index) {
                course s =coursedata.allcourses[index];
                return Dismissible(
                  background: Container(color: Colors.red,),
                  key: UniqueKey(),
                  onDismissed:(_){
                    setState(() {
                      Provider.of<courseData>(context,listen: false).removecourse(s);
                    });

                  },
                  direction: DismissDirection.startToEnd,
                  child: Rowinfo(
                   thecourse: s,
//                  delete1:() {
//                    coursedata.removecourse(s);
//                  }
                  ),
                );
              },
              ),
        );

      },
    );
  }
}
