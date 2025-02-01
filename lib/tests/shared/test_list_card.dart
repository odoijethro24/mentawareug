import 'package:flutter/material.dart';

class TestListCard extends StatelessWidget {
  final String testName;
  final String testDescription;
  final VoidCallback onTap;

  const TestListCard({
    required this.testName,
    required this.testDescription,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                testName,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 10),
              Text(
                testDescription,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(102, 102, 102, 1),
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
