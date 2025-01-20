import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/logo.dart';

class WelcomeSidePanel extends StatelessWidget {
  const WelcomeSidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromRGBO(194, 218, 216, 1),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Logo(logo_radius: 50),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Mentaware UG",
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Monserat',
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
