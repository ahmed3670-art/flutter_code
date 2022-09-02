import 'package:flutter/material.dart';
import 'package:sql_database/dbhelper.dart';
import 'package:sql_database/model/course.dart';
import 'package:sql_database/pages/Home.dart';

class update extends StatefulWidget {
  Course uudate_coures;
  update(this.uudate_coures);

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  TextEditingController teName = TextEditingController();
  TextEditingController teContent = TextEditingController();
  TextEditingController teHours = TextEditingController();
  TextEditingController teLevel = TextEditingController();
  void initState() {
    super.initState();

    teName.text = widget.uudate_coures.name;
    teContent.text = widget.uudate_coures.content;
    teHours.text = widget.uudate_coures.hours.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Update'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: teName,
            ),
            TextField(
              maxLines: null,
              controller: teContent,
            ),
            TextField(
              controller: teHours,
            ),
            RaisedButton(
              child: Text('Save'),
              onPressed: () {
                var updatedCourse = Course(
                    id: widget.uudate_coures.id,
                    name: teName.text,
                    content: teContent.text,
                    hours: int.parse(teHours.text));
                setState(() {
                  DatabaseHelper.instance.update(updatedCourse);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Home()),
                      (route) => false);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
