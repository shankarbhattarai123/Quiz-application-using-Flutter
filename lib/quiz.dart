import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int listIndex;
  final Function clickButton;
  Quiz(this.questions, this.listIndex, this.clickButton);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[listIndex]['questionText']),
      ...(questions[listIndex]['answers'] as List<String>).map((answer) {
        return Answer(clickButton, answer);
      }).toList()
    ]);
  }
}
