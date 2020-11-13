import 'package:Covid19_App/CustomWidgets/hero.dart';
import 'package:Covid19_App/CustomWidgets/prevention_card.dart';
import 'package:Covid19_App/CustomWidgets/symptom_card.dart';
import 'package:Covid19_App/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHero(image: "assets/icons/coronadr.svg", textTop: "Get to know", textBottom: "About Covid-19.", route: "home",),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Symptoms", style: kTitleTextstyle),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomCard(image: "assets/images/headache.png", title: "Headache"),
                      SymptomCard(image: "assets/images/fever.png", title: "Fever"),
                      SymptomCard(image: "assets/images/caugh.png", title: "Caugh"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", style: kTitleTextstyle),
                  PreventionCard(title: "Wear face mask", image: "assets/images/wear_mask.png", text:"Since the start of coronavirus outbreak some places have fully embraced wearing face masks"),
                  PreventionCard(title: "Wash your hands", image: "assets/images/wash_hands.png", text:"Since the start of coronavirus outbreak some places have fully embraced wearing face masks"),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}