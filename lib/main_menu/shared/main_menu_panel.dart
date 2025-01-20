import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/logo.dart';

class MainMenuPanel extends StatelessWidget {
  const MainMenuPanel({super.key});

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Logo(logo_radius: 50),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Card(
              color: Color.fromRGBO(245, 252, 255, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logged In As: ",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 140, 160, 1.0),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Nickname: ",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 140, 160, 1.0),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
