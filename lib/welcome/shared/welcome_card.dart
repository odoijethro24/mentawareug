import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';

class Welcomecard extends StatelessWidget {
  const Welcomecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME',
                style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PrimaryButton(
                  text: 'Normal User',
                  width: MediaQuery.of(context).size.width * 0.6,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: PrimaryButton(
                  text: 'Professional',
                  width: MediaQuery.of(context).size.width * 0.6,
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
