import 'package:Covid19_App/CustomWidgets/counter.dart';
import 'package:Covid19_App/CustomWidgets/hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          MyHero(image: "assets/icons/Drcorona.svg", textTop: "All you need is", textBottom: "to stay at home", route: "info"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                    value: 'Egypt',
                    items: ['Egypt','Canada', 'USA', 'Japan']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value){},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Case Update\n", style: kTitleTextstyle),
                          TextSpan(text: "Newest update March 28",style: TextStyle(color: kTextLightColor))
                        ]
                      )
                    ),
                    Spacer(),
                    Text("See details", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor
                    )]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Counter(color: kInfectedColor, title: "Infected", number: 1028),
                      Counter(color: kDeathColor, title: "Deaths", number: 98),
                      Counter(color: kRecovercolor, title: "Recovered", number: 56)
                    ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Spread of virus", style: kTitleTextstyle),
                      Text("See details", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor
                    )]
                  ),
                  child: Image.asset("assets/images/map.png", fit: BoxFit.contain)
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}