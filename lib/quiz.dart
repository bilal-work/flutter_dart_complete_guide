import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {required this.questions,
      required this.answerQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=> answerQuestions(answer['score']), answer['text'] as String);
        }).toList()

        // ElevatedButton(onPressed: _answerQuestions, child: Text('Answer 1')),
        // ElevatedButton(
        //     onPressed: () => print('Answer 2 chosen!'),
        //     child: Text('Answer 2')),
        // ElevatedButton(
        //     onPressed: () => print('Answer 3 chosen!'),
        //     child: Text('Answer 3')),
      ],
    );
  }
}
