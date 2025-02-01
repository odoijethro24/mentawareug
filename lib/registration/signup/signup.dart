import 'package:flutter/material.dart';
import 'package:mentaware_ug/registration/signup/shared/signup_card.dart';
import 'package:mentaware_ug/shared/welcome_panel.dart';
import 'package:mentaware_ug/shared/welcome_side_panel.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      body: MediaQuery.of(context).size.width < 750
          ? Column(
              children: [
                Expanded(flex: 2, child: WelcomePanel()),
                Expanded(flex: 4, child: SignupCard()),
              ],
            )
          : Row(
              children: [
                Expanded(flex: 2, child: WelcomeSidePanel()),
                Expanded(
                  flex: 4,
                  child: SignupCard(),
                ),
              ],
            ),
    );
  }
}
