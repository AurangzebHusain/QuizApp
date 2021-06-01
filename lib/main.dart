import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Pink', 'score': 5},
        {'text': 'White', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 8},
        {'text': 'Dog', 'score': 6},
        {'text': 'Bat', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favourite pen?',
      'answers': [
        {'text': 'Parker', 'score': 23},
        {'text': 'Cello', 'score': 17},
        {'text': 'Rotomac', 'score': 10},
        {'text': 'Natraj', 'score': 4},
      ]
    },
  ];
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    this.setState(() {
      _questionIndex++;
    });
    print('Answer Choosen! ${_questionIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Container(
                width: double.infinity,
                child: Text('QuizApp', textAlign: TextAlign.center)),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(this._totalScore)),
    );
  }
}
