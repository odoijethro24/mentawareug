import 'package:flutter/material.dart';
import 'package:mentaware_ug/registration/login/shared/login_card.dart';
import 'package:mentaware_ug/shared/welcome_panel.dart';
import 'package:mentaware_ug/shared/welcome_side_panel.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      body: MediaQuery.of(context).size.width < 750
          ? Column(
              children: [
                Expanded(flex: 2, child: WelcomePanel()),
                Expanded(flex: 4, child: LoginCard()),
              ],
            )
          : Row(
              children: [
                Expanded(flex: 2, child: WelcomeSidePanel()),
                Expanded(
                  flex: 4,
                  child: LoginCard(),
                ),
              ],
            ),
    );
  }
}
