import 'package:app_ui/screen/login_page.dart';
import 'package:app_ui/screen/main_screen.dart';
import 'package:app_ui/screen/splash_screen.dart';
import 'package:app_ui/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/screen/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'JobFinder',
        home: LoginPage(),
        theme: ThemeData(
          primaryColor: Color(0xFF5F5FFF),
          accentColor: Color(0XFF030047),
          highlightColor: Color(0XFFB7B7D2),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0XFF030047),
            ),
            headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5F5FFF),
            ),
            bodyText1: TextStyle(
              fontSize: 20.0,
              color: Color(0XFFB7B7D2),
            ),
          ),
        ),
        //login
        initialRoute: LoginPage.id,
        routes: {
          LoginPage.id: (context) => LoginPage(),
        });
  }
}
