import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/welcome_panel.dart';
import 'package:mentaware_ug/shared/welcome_side_panel.dart';
import 'package:mentaware_ug/welcome/shared/welcome_card.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 245, 225, 1),
      body: MediaQuery.of(context).size.width < 750
          ? Column(
              children: [
                Expanded(flex: 2, child: WelcomePanel()),
                Expanded(flex: 4, child: Welcomecard()),
              ],
            )
          : Row(
              children: [
                Expanded(flex: 2, child: WelcomeSidePanel()),
                Expanded(
                  flex: 4,
                  child: Welcomecard(),
                )
              ],
            ),
    );
  }
}
