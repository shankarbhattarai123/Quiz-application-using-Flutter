import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 45, right: 45),
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: MaterialButton(
            splashColor: Colors.indigo.shade700,
            color: Colors.blue,
            minWidth: 400.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: selectHandler,
            height: 60,
            child: Text(
              answerText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
