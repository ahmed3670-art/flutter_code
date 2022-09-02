import 'package:flutter/material.dart';
import 'package:sql_database/dbhelper.dart';
import 'package:sql_database/model/course.dart';
import 'package:sql_database/pages/NewCourse.dart';
import 'package:sql_database/pages/coursedetiles.dart';
import 'package:sql_database/pages/update.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite Database'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewCourse())),
          )
        ],
      ),
      body: FutureBuilder(
        future: DatabaseHelper.instance.allCourses(),
        builder: (context, AsyncSnapshot<List<Course>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.map((course) {
                return Card(
                  child: ListTile(
                    title: Text(course.name),
                    trailing: Column(
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  DatabaseHelper.instance.remove(course.id!);
                                });
                              },
                              icon: Icon(Icons.remove)),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => update(course)));
                              },
                              icon: Icon(Icons.update)),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => course_detiles(course)));
                    },
                    // onLongPress: () {
                    //   setState(() {
                    //     DatabaseHelper.instance.remove(course.id!);
                    //   });
                    // },
                    // onTap: () {
                    //   DatabaseHelper.instance.update(course);
                    // },
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
