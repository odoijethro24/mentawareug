import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final bool obsecure;
  final Function(String) onChanged;

  const InputField({
    super.key,
    required this.hintText,
    required this.obsecure,
    required this.onChanged,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: TextField(
        obscureText: widget.obsecure,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          fillColor:
              Color.fromRGBO(225, 240, 250, 1.0), // Light Blue background
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Slightly rounded border
            borderSide: BorderSide(
              color:
                  Color.fromRGBO(100, 180, 220, 1.0), // Soft Blue border color
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromRGBO(60, 140, 200, 1.0), // Darker Blue on focus
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color:
                  Color.fromRGBO(100, 180, 220, 1.0), // Soft Blue border color
              width: 1.5,
            ),
          ),
          hintStyle: TextStyle(
            color: Color.fromRGBO(
                120, 170, 200, 1.0), // Hint text color in Blue tones
          ),
        ),
      ),
    );
  }
}
