import 'package:flutter/material.dart';

class MainMenuCard extends StatelessWidget {
  final width;
  final height;
  final onTap;
  final icon;
  final String text;
  const MainMenuCard(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.height,
      required this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Shadow color
                  spreadRadius: 2, // How far the shadow spreads
                  blurRadius: 8, // How blurry the shadow is
                  offset: Offset(0, 4), // Shadow position (x, y)
                ),
              ],
              color: Color.fromRGBO(225, 238, 244, 1.0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height - 50,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 245, 250, 1.0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Image.asset(scale: 5, icon),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  text,
                  style: TextStyle(color: Color.fromRGBO(35, 89, 121, 1.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
