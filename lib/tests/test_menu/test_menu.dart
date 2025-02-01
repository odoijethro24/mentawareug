import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/secondary_button.dart';
import 'package:mentaware_ug/tests/take_test/take_test.dart';
import 'package:mentaware_ug/tests/take_test/test_list.dart';

class TestMenu extends StatelessWidget {
  const TestMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Back Button
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(51, 51, 51, 1), // Dark gray
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context); // Go back to the previous screen
                },
              ),
            ),
            SizedBox(height: 10), // Spacing between back button and header
            // Header Card
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/assessment.png',
                      height: 80, // Adjusted icon size
                      width: 80,
                      color: Color.fromRGBO(194, 218, 216, 1), // Soft teal
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Take A Test',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Spacing between header and buttons
            // Buttons Card
            Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryButton(
                        text: 'Start Test',
                        width:
                            MediaQuery.of(context).size.width > 800 ? 400 : 300,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return TestList();
                          }));
                        },
                      ),
                      SizedBox(height: 15), // Spacing between buttons
                      SecondaryButton(
                        text: 'Test Evaluation',
                        width:
                            MediaQuery.of(context).size.width > 800 ? 400 : 300,
                        onPressed: () {
                          // Navigate to evaluation screen
                        },
                      ),
                      SizedBox(height: 15), // Spacing between buttons
                      SecondaryButton(
                        text: 'Test History',
                        width:
                            MediaQuery.of(context).size.width > 800 ? 400 : 300,
                        onPressed: () {
                          // Navigate to history screen
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
