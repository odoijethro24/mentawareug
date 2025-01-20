import 'package:flutter/material.dart';
import 'package:mentaware_ug/shared/buttons/secondary_button.dart';

class TestMenu extends StatelessWidget {
  const TestMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 245, 225, 1),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              scale: 6, 'assets/icons/assessment.png'),
                        ),
                        Text(
                          'Take A Test',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: "poppins"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SecondaryButton(
                              text: 'Test',
                              width: MediaQuery.of(context).size.width > 800
                                  ? 550
                                  : 300,
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SecondaryButton(
                                text: 'Test Evaluation',
                                width: MediaQuery.of(context).size.width > 800
                                    ? 550
                                    : 300,
                                onPressed: () {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SecondaryButton(
                                text: 'Test History',
                                width: MediaQuery.of(context).size.width > 800
                                    ? 550
                                    : 300,
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
