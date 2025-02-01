import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool obsecure;
  final Function(String) onChanged;
  final IconData? prefixIcon;
  final Widget? suffixIcon;

  const InputField({
    required this.hintText,
    required this.obsecure,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontFamily: 'Poppins',
        ),
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: Colors.grey) : null,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}
