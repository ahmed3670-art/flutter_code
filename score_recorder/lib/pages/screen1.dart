import 'dart:ui';

import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  String Team1, Team2;
  screen1(this.Team1, this.Team2);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  int counter1 = 0;
  int counter2 = 0;
  TextEditingController team1cont = TextEditingController();
  TextEditingController team2cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Score Recorder')),
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child: Text(
                          widget.Team1,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                          controller: team1cont,
                          keyboardType: TextInputType.number),
                      SizedBox(
                        height: 50,
                      ),
                      Text(counter1.toString(),
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      RaisedButton(
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              if (team1cont.text.isEmpty) {
                              } else {
                                counter1 = counter1 + int.parse(team1cont.text);
                                team1cont.clear();
                              }
                            });
                          }),
                      RaisedButton(
                          child: Text(
                            'remove',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              if (team1cont.text.isEmpty) {
                              } else {
                                counter1 = counter1 - int.parse(team1cont.text);
                                team1cont.clear();
                              }
                            });
                          })
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: double.infinity,
                          height: 55,
                          child: Text(widget.Team2,
                              style: TextStyle(fontSize: 30))),
                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                        controller: team2cont,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(counter2.toString(), style: TextStyle(fontSize: 30)),
                      SizedBox(
                        height: 50,
                      ),
                      RaisedButton(
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              if (team2cont.text.isEmpty) {
                              } else {
                                counter2 = counter2 + int.parse(team2cont.text);
                                team2cont.clear();
                              }
                            });
                          }),
                      RaisedButton(
                          child: Text(
                            'remove',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              if (team2cont.text.isEmpty) {
                              } else {
                                counter2 = counter2 - int.parse(team2cont.text);
                                team2cont.clear();
                              }
                            });
                          }),
                    ],
                  )),
            ],
          ),
        ));
  }
}
