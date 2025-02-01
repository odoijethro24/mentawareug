import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String loginUser(
      BuildContext context, String userEmail, String userPassword) {
    ScaffoldMessenger.of(context).clearSnackBars(); // Clear previous messages
    showLoadingIndicator(context); // Show loading indicator

    _auth
        .signInWithEmailAndPassword(email: userEmail, password: userPassword)
        .then((userCredential) {
      Navigator.pop(context); // Remove loading indicator
      Navigator.pushNamed(context, '/mainMenu'); // Navigate to main screen
    }).catchError((error) {
      Navigator.pop(context); // Remove loading indicator
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.message ?? "Login failed. Try again.")),
      );
    });
    return userEmail;
  }

  void showLoadingIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
  }
}

void passwordReset(BuildContext context, String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    // Show a success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password reset email sent!')),
    );
  } catch (e) {
    // Show an error message if there's an issue
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.toString()}')),
    );
  }
}
