import 'package:chat_app/component/button.dart';
import 'package:chat_app/manager/string_manager.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Padding(
                padding: EdgeInsets.only(top: 150, left: 40, right: 40),
                child:
                    const Image(image: AssetImage("assets/images/logo0.png"))),
            Material(
              color: Colors.green[500]!,
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                onPressed: () {
                  print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                  Navigator.pushNamed(context, StringManger.LoginPage);
                },
                minWidth: 300,
                child: Text(
                  "sign in",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Material(
              color: Colors.green[500]!,
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                onPressed: () {
                  print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                  Navigator.pushNamed(context, StringManger.RegisterPage);
                },
                minWidth: 300,
                child: Text(
                  "sign up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
