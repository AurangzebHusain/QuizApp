import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsetsDirectional.all(20) ,
      child: Text(questionText,
        style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
      ),
    );
  }
}
