import 'package:flutter/material.dart';
import 'package:mentaware_ug/tests/shared/Test.dart';
import 'package:mentaware_ug/tests/shared/questio_card.dart';

class TakeTest extends StatefulWidget {
  final Test test;

  const TakeTest({required this.test, Key? key}) : super(key: key);

  @override
  State<TakeTest> createState() => _TakeTestState();
}

class _TakeTestState extends State<TakeTest> {
  int _currentQuestionIndex = 0;
  String? _selectedObjective;
  List<List<dynamic>> _userSelections =
      []; // Stores [questionIndex, selectedObjective]

  void _nextQuestion() {
    if (_selectedObjective != null) {
      // Save the user's selection
      _userSelections.add([_currentQuestionIndex, _selectedObjective]);

      // Move to the next question
      if (_currentQuestionIndex < widget.test.questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _selectedObjective = null; // Reset selection for the next question
        });
      } else {
        // Test is finished
        _showResults();
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please select an objective before proceeding.'),
        ),
      );
    }
  }

  void _showResults() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Test Results'),
          content: Text('Your selections: $_userSelections'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.test.questions[_currentQuestionIndex];
    final questionText = currentQuestion[0];
    final objectives = currentQuestion.sublist(1);

    return Scaffold(
      backgroundColor:
          Color.fromRGBO(245, 245, 245, 1), // Light gray background
      appBar: AppBar(
        title: Text(
          widget.test.testName,
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
      body: Column(
        children: [
          Expanded(
            child: QuestionCard(
              question: questionText,
              objectives: objectives,
              onObjectiveSelected: (objective) {
                setState(() {
                  _selectedObjective = objective;
                });
              },
              selectedObjective: _selectedObjective,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: _nextQuestion,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(51, 51, 51, 1), // Dark gray
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                _currentQuestionIndex < widget.test.questions.length - 1
                    ? 'Next Question'
                    : 'Finish Test',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
