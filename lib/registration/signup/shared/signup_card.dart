import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';
import 'package:mentaware_ug/shared/input_field.dart';

class SignupCard extends StatefulWidget {
  const SignupCard({super.key});

  @override
  State<SignupCard> createState() => _SignupCardState();
}

class _SignupCardState extends State<SignupCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Card(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'REGISTER',
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
              InputField(
                hintText: 'Confirm Password',
                obsecure: true,
                onChanged: (value) {},
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Have an account? Login.')),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: PrimaryButton(
                  text: 'Register',
                  width: 300,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
