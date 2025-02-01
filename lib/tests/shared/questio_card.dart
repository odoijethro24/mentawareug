import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  final List<String> objectives;
  final Function(String) onObjectiveSelected;
  final String? selectedObjective;

  const QuestionCard({
    required this.question,
    required this.objectives,
    required this.onObjectiveSelected,
    this.selectedObjective,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 20),
            ...objectives.map((objective) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: () => onObjectiveSelected(objective),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: objective == selectedObjective
                        ? Color.fromRGBO(
                            51, 51, 51, 1) // Dark gray for selected
                        : Color.fromRGBO(
                            194, 218, 216, 1), // Soft teal for unselected
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    objective,
                    style: TextStyle(
                      fontSize: 16,
                      color: objective == selectedObjective
                          ? Colors.white // White text for selected
                          : Color.fromRGBO(
                              51, 51, 51, 1), // Dark gray text for unselected
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
