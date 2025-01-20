import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(width, 40),
        minimumSize: Size(width, 40),
        backgroundColor:
            Color.fromRGBO(72, 169, 195, 1.0), // Secondary button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2, // Subtle shadow effect
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.0), // White text color
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
