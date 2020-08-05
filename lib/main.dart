import 'package:flutter/material.dart';

import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(0xFFE7AEB9),
  primaryColorLight: Color(0xFFFFDFE8),
  primaryColorDark: Color(0xFFC871A8),
  accentColor: Color(0xFF7EAFAB),
  dividerColor: Color(0x1f6D42CE),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparkle',
      theme: lightTheme,
      home: LoginPage(),
    );
  }
}
