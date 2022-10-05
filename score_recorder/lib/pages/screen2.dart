import 'package:flutter/material.dart';
import 'package:score_recorder/pages/screen1.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  TextEditingController team1 = TextEditingController();
  TextEditingController team2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter the name of the two teams')),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: TextField(
              controller: team1,
              decoration: InputDecoration(hintText: ('Enter team1')),
            )),
            Expanded(
                child: TextField(
              controller: team2,
              decoration: InputDecoration(hintText: ('Enter team2')),
            )),
            // Center(
            // child:
            RaisedButton(
              onPressed: () {
                if (team1.text.isEmpty && team2.text.isEmpty) {
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => screen1(team1.text, team2.text)),
                  );
                }
              },
              child: Text('Save', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
            ),
            RaisedButton(
                color: Colors.blue,
                child: Text('clear', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  team1.clear();
                  team2.clear();
                })
            // )
          ],
        ),
      ),
    );
  }
}
