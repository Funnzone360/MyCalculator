import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String? answerText;
  Color? answerColor;
  VoidCallback? onbtnpress;

  Answer({this.answerText, this.answerColor, this.onbtnpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onbtnpress,
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: answerColor,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          "${answerText}",
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
