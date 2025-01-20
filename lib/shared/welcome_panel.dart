import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/logo.dart';

class WelcomePanel extends StatelessWidget {
  const WelcomePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromRGBO(194, 218, 216, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(logo_radius: 50),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Mentaware UG",
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
