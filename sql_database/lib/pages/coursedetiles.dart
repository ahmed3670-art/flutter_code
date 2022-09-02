import 'package:flutter/material.dart';
import 'package:sql_database/model/course.dart';

class course_detiles extends StatelessWidget {
  Course course;
  course_detiles(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('corse detiles')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
            child: Text(
              course.name,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(course.content),
          ),
          Text(
            course.hours.toString(),
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
