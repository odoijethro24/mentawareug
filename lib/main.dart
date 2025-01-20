import 'package:flutter/material.dart';
import 'package:mentaware_ug/main_menu/main_menu.dart';
import 'package:mentaware_ug/registration/login/login.dart';
import 'package:mentaware_ug/registration/signup/signup.dart';
import 'package:mentaware_ug/talk/talk_to_professional.dart';
import 'package:mentaware_ug/tests/test_menu/test_menu.dart';
import 'package:mentaware_ug/welcome/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/mainMenu': (context) => MainMenu(),
        '/testMenu': (context) => TestMenu(),
        '/talkToProfessional': (context) => TalkToProfessional(),
      },
    );
  }
}
