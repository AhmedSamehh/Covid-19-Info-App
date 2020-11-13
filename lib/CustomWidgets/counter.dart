import 'package:Covid19_App/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  final String title;
  final Color color;
  const Counter({
    Key key, this.number, this.title, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26)
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Colors.transparent,
                border: Border.all(color: color, width: 2)
              ),
            ),
          ),
        ),
        Text("$number", style: TextStyle(fontSize: 35, color: color)),
        Text("$title", style: kSubTextStyle)
      ],
    );
  }
}