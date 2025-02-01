import 'package:flutter/material.dart';
import 'package:mentaware_ug/registration/signup/shared/signup_logic.dart';
import 'package:mentaware_ug/shared/buttons/primary_button.dart';
import 'package:mentaware_ug/shared/input_field.dart';

class SignupCard extends StatefulWidget {
  const SignupCard({super.key});

  @override
  State<SignupCard> createState() => _SignupCardState();
}

class _SignupCardState extends State<SignupCard> {
  bool _obscurePassword = true; // Toggle password visibility
  bool _obscureConfirmPassword = true; // Toggle confirm password visibility
  bool _isLoading = false; // Track sign-up process
  String userEmail = '';
  String userPassword = '';

  Future<void> _handleSignup() async {
    if (userEmail.isEmpty || userPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill in all fields."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    AuthService service = AuthService();
    await service.signupUser(context, userEmail, userPassword);

    setState(() {
      _isLoading = false;
    });
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
                const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                InputField(
                  hintText: 'Full Name',
                  obsecure: false,
                  onChanged: (value) {},
                  prefixIcon: Icons.person,
                ),
                const SizedBox(height: 15),
                InputField(
                  hintText: 'Email',
                  obsecure: false,
                  onChanged: (value) {
                    userEmail = value;
                  },
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 15),
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
                const SizedBox(height: 15),
                InputField(
                  hintText: 'Confirm Password',
                  obsecure: _obscureConfirmPassword,
                  onChanged: (value) {},
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                _isLoading
                    ? const CircularProgressIndicator()
                    : PrimaryButton(
                        text: 'Sign Up',
                        width: MediaQuery.of(context).size.width * 0.6,
                        onPressed: () {
                          if (_isLoading) {
                            null;
                          } else {
                            _handleSignup();
                          }
                        }),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Color.fromRGBO(89, 136, 132, 1), // Soft teal
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
