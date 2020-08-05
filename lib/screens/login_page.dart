import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TODO: text additing controllers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: [
                Image.asset('assets/diamond.png'),
                SizedBox(
                  height: 16.0,
                ),
                Text('SPARKLE'),
              ],
            ),
            SizedBox(
              height: 120.0,
              //TODO: username e passwords
            ),
          ],
        ),
      ),
    );
  }
}
