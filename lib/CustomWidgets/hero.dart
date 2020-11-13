import 'package:Covid19_App/Screens/info_screen.dart';
import 'package:Covid19_App/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHero extends StatelessWidget {
  final String route;
  final String image;
  final String textTop;
  final String textBottom;
  const MyHero({
    Key key, this.image, this.textTop, this.textBottom, this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top:50, right: 10),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png")
          ),
          gradient: LinearGradient(
            colors: [Colors.red[900], Colors.red[500]],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Align( 
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: (){
                if(route == "info"){
                Navigator.push(context, MaterialPageRoute(builder: (context) {return InfoScreen();}));
                }else{
                  Navigator.pop(context);
                }
              },
              child: SvgPicture.asset("assets/icons/menu.svg", height: 20)
            )
          ),
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                SvgPicture.asset(
                  image,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  width: 230,
                ),
                Positioned(
                  top: 30,
                  left: 150,
                  child: Text(
                    "$textTop \n$textBottom",
                    style: kHeadingTextStyle.copyWith(color:Colors.white),
                    )
                ),
                Container()
            ])
          )
        ]),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
      var path = Path();
      path.lineTo(0, size.height - 80);
      path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
      path.lineTo(size.width, 0);
      path.close();
      return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper oldClipper) {
      return false;
  }
  
}