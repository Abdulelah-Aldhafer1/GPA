import 'package:flutter/material.dart';
import 'package:gpa/backend.dart';
import 'package:provider/provider.dart';
import 'package:gpa/course_data.dart';
import 'package:gpa/main.dart';


class gpaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Provider.of<courseData>(context, listen: false).addcourse("A", 3);
            }), //add row when you press it
        appBar: AppBar(
          title: Text('GPA'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: [
            therows(),
            // Container(
            //   child: FlatButton(
            //     color: Colors.black,
            //     onPressed: () {
            //       functions().fu(Provider.of<courseData>(context, listen: false)
            //           .allcourses);
            //     },
            //   ),
            // ), //test,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.deepOrangeAccent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            child: Text(
                              "Semester GPA",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                            child: Text(
                                functions().fu(Provider.of<courseData>(context).allcourses),
                                style: TextStyle(fontSize: 20))),
                      ),
                      SizedBox(height: 60,
                      ),
                    ],
                  ),
                ),
                Container(
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            child: Text(
                              "GPA",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                            child: Text(
                                functions().fu(Provider.of<courseData>(context).allcourses),
                                style: TextStyle(fontSize: 20))),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  )
                  ,)
              ],
            ),
          ],
        ));
  }
}
