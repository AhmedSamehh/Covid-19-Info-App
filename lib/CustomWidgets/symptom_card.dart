import 'package:Covid19_App/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  const SymptomCard({  
    Key key, this.image, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 20,
          color: kActiveShadowColor
        )]
      ),
      child: Column(
        children: [
          Image.asset(image),
          Text(title, style: TextStyle(fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}