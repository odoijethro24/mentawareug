import 'package:flutter/material.dart';
import 'package:mentaware_ug/tests/shared/Test.dart';
import 'package:mentaware_ug/tests/shared/test_list_card.dart';
import 'package:mentaware_ug/tests/shared/tests.dart';
import 'package:mentaware_ug/tests/take_test/take_test.dart';

class TestList extends StatelessWidget {
  const TestList({super.key});

  @override
  Widget build(BuildContext context) {
    // Test Lists
    final List<Map<String, String>> tests = [
      {
        'name': 'GAD-7 (Generalized Anxiety Disorder Test)',
        'description':
            'A self-assessment tool for screening and measuring the severity of generalized anxiety disorder (GAD).',
      },
      {
        'name': 'PHQ-9 (Patient Health Questionnaire)',
        'description':
            'A widely used tool to assess the severity of depression and monitor symptoms over time.',
      },
      {
        'name': 'DASS-21 (Depression, Anxiety, and Stress Scale)',
        'description':
            'A psychological test measuring the levels of depression, anxiety, and stress in individuals.',
      },
      {
        'name': 'PCL-5 (PTSD Checklist for DSM-5)',
        'description':
            'A screening tool to assess symptoms of post-traumatic stress disorder (PTSD).',
      },
      {
        'name': 'BAI (Beck Anxiety Inventory)',
        'description':
            'A questionnaire used to measure the intensity of anxiety symptoms.',
      },
      {
        'name': 'BDI-II (Beck Depression Inventory)',
        'description':
            'A self-report inventory to evaluate the severity of depression symptoms.',
      },
      {
        'name': 'PSS (Perceived Stress Scale)',
        'description':
            'Measures how unpredictable, uncontrollable, and overloaded individuals find their lives.',
      },
      {
        'name': 'SCOFF Questionnaire',
        'description':
            'A screening tool for detecting eating disorders like anorexia and bulimia.',
      },
      {
        'name': 'CAGE Questionnaire',
        'description':
            'A brief screening tool for detecting problematic drinking behaviors.',
      },
      {
        'name': 'LSAS (Liebowitz Social Anxiety Scale)',
        'description':
            'Measures social anxiety symptoms and avoidance behaviors.',
      },
      {
        'name': 'RAADS-R (Ritvo Autism Asperger Diagnostic Scale-Revised)',
        'description':
            'A self-assessment tool for detecting autism spectrum traits in adults.',
      },
      {
        'name': 'WHO-5 Well-Being Index',
        'description':
            'A short questionnaire measuring overall mental well-being and happiness.',
      },
    ];

    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      appBar: AppBar(
        title: Text(
          'Available Tests',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(51, 51, 51, 1),
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Color.fromRGBO(194, 218, 216, 1), // Soft teal
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: tests.length,
        itemBuilder: (context, index) {
          return TestListCard(
            testName: tests[index]['name']!,
            testDescription: tests[index]['description']!,
            onTap: () {
              // Find the test in testList that matches the selected test name
              Test? selectedTest = testList.firstWhere(
                (test) => test.testName == tests[index]['name'],
                orElse: () => Test(
                    testName: '',
                    questions: []), // Default empty test if not found
              );

              if (selectedTest.testName.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TakeTest(test: selectedTest),
                  ),
                );
              } else {
                print("Test not found");
              }
            },
          );
        },
      ),
    );
  }
}
