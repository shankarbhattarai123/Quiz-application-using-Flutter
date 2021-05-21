import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  Result(this.reset);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 250, bottom: 30),
          child: Text(
            "successfully finished!!😍😍😍 Result:",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        MaterialButton(
          color: Colors.blue,
          onPressed: reset,
          child: Text(
            "Reset Quiz",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
