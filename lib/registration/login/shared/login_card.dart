import 'package:flutter/material.dart';
import 'package:mentaware_ug/registration/login/shared/login_logic.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';
import 'package:mentaware_ug/shared/input_field.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool _obscurePassword = true; // Toggle password visibility
  bool _isLoading = false; // Track loading state
  String userEmail = "";
  String userPassword = "";

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    await AuthService().loginUser(context, userEmail, userPassword);

    setState(() {
      _isLoading = false;
    });
  }

  void _showForgotPasswordDialog() {
    final TextEditingController emailController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Forgot Password'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Enter your email to reset your password.'),
            SizedBox(height: 15),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final email = emailController.text.trim();
              if (email.isNotEmpty) {
                passwordReset(context, email);
                Navigator.of(context)
                    .pop(); // Close the dialog after sending the email
              } else {
                // Show an error message if email is empty
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Please enter a valid email address.')),
                );
              }
            },
            child: Text('Reset Password'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                InputField(
                  hintText: 'Email',
                  obsecure: false,
                  onChanged: (value) {
                    userEmail = value;
                  },
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 15),
                InputField(
                  hintText: 'Password',
                  obsecure: _obscurePassword,
                  onChanged: (value) {
                    userPassword = value;
                  },
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed:
                        _showForgotPasswordDialog, // Show forgot password dialog
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _isLoading
                    ? CircularProgressIndicator() // Show loading indicator
                    : PrimaryButton(
                        text: 'Login',
                        width: MediaQuery.of(context).size.width * 0.6,
                        onPressed: () {
                          if (userEmail.isNotEmpty && userPassword.isNotEmpty) {
                            _handleLogin();
                          }
                        }),
                SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: Color.fromRGBO(89, 136, 132, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
