import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/logo.dart';

class MainMenuPanel extends StatelessWidget {
  const MainMenuPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(194, 218, 216, 1), // Soft teal
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(logo_radius: 40),
            SizedBox(height: 10),
            Text(
              "Main Menu",
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
