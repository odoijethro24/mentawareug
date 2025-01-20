import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback onPressed;
  const PrimaryButton(
      {super.key,
      required this.text,
      required this.width,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          maximumSize: Size(width, 40),
          minimumSize: Size(width, 40),
          backgroundColor: Color.fromRGBO(55, 150, 131, 1.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
