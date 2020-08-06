import 'package:flutter/material.dart';

import 'package:Sparkle/screen/home.dart';
import 'screen/home.dart';
import 'package:Sparkle/screen/login_page.dart';

ThemeData lightTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(0xFFE7AEB9),
  primaryColorLight: Color(0xFFFFDFE8),
  primaryColorDark: Color(0xFFC871A8),
  accentColor: Color(0xFF7EAFAB),
  dividerColor: Color(0x1f6D42CE),
  fontFamily: 'Rubik',
  appBarTheme: AppBarTheme(
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'DancingScript',
            color: Color(0xFF592C4B),
            fontSize: 30.0,
          ),
        ),
  ),
);

class SparkleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparkle',
      theme: lightTheme,
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/login') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) => LoginPage(),
    fullscreenDialog: true,
  );
}
