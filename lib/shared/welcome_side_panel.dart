import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/logo.dart';

class WelcomeSidePanel extends StatelessWidget {
  const WelcomeSidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromRGBO(194, 218, 216, 1), // Soft teal
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(logo_radius: 50),
          SizedBox(height: 10),
          Text(
            "Mentaware UG",
            style: TextStyle(
              color: Color.fromRGBO(51, 51, 51, 1),
              fontFamily: 'Montserrat',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
