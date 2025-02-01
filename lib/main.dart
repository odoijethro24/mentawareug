import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mentaware_ug/firebase_options.dart';
import 'package:mentaware_ug/main_menu/main_menu.dart';
import 'package:mentaware_ug/registration/login/login.dart';
import 'package:mentaware_ug/registration/signup/signup.dart';
import 'package:mentaware_ug/tests/take_test/test_list.dart';
import 'package:mentaware_ug/tests/test_menu/test_menu.dart';
import 'package:mentaware_ug/welcome/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform, // Ensure options are not null
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthHome(), // Replace the AuthWrapper with a direct check
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/mainMenu': (context) => MainMenu(),
        '/testMenu': (context) => TestMenu(),
        '/testList': (context) => TestList(),
      },
    );
  }
}

class AuthHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return const MainMenu(); // User is logged in
        } else {
          return const Welcome(); // User is not logged in
        }
      },
    );
  }
}
