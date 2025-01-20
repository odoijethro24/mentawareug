import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';
import 'package:mentaware_ug/shared/input_field.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            InputField(
              hintText: 'Email',
              obsecure: false,
              onChanged: (value) {},
            ),
            InputField(
              hintText: 'Password',
              obsecure: true,
              onChanged: (value) {},
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Dont have an account? Register.')),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PrimaryButton(
                text: 'Login',
                width: 300,
                onPressed: () {
                  Navigator.pushNamed(context, '/mainMenu');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
