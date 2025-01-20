import 'package:flutter/material.dart';

class TalkToProfessional extends StatefulWidget {
  const TalkToProfessional({super.key});

  @override
  State<TalkToProfessional> createState() => _TalkToProfessionalState();
}

class _TalkToProfessionalState extends State<TalkToProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 245, 225, 1),
      body: Column(
        children: [
          Expanded(
            child: Card(
              child: Text('Talk to Professional'),
            ),
          ),
          Expanded(
            child: Card(
              child: Text('Talk to Professional'),
            ),
          ),
        ],
      ),
    );
  }
}
