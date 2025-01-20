import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';

class Welcomecard extends StatelessWidget {
  const Welcomecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PrimaryButton(
                text: 'Normal User',
                width: 300,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PrimaryButton(
                text: 'Professional',
                width: 300,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
