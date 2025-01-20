import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final logo_radius;
  const Logo({super.key, required this.logo_radius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CircleAvatar(
        radius: logo_radius,
        backgroundColor: Color.fromRGBO(67, 77, 142, 1),
        child: Text(
          'MU',
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Armata"),
        ),
      ),
    );
  }
}
