import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

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
        child: Center(
          child: Container(
            width: defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS
                ? MediaQuery.of(context).size.width * 1
                : MediaQuery.of(context).size.width *
                    0.60, // does not work on web browser
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
                    const Text('SPARKLE'),
                  ],
                ),
                SizedBox(
                  height: 120.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'UserName',
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                ButtonBar(
                  children: [
                    FlatButton(onPressed: null, child: const Text('Cancel')),
                    RaisedButton(onPressed: null, child: const Text('NEXT')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
