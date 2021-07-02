import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                color: Color(0xfff2784f),
                height: MediaQuery.of(context).size.height/2,width: MediaQuery.of(context).size.width,),
              Container(
                color: Color(0xff30C8FE),
                height: MediaQuery.of(context).size.height/2,width: MediaQuery.of(context).size.width,),
            ],
          ),
          ClipPath(
            clipper: MyCustomeClipper(),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            
            ),
          ),
       
        ],
      ),
    );
  }
}

class MyCustomeClipper extends CustomClipper<Path>{

  @override
  getClip(Size? size) {
    Path path = Path();
    path.moveTo(0, size!.height * 0.3);
     path.lineTo(0.0, size.height);
     path.lineTo(size.width * 0.11, size.height);

    var firstControlPoint = Offset(size.width * 0.195, size.height * 0.92);
    var firstEndPoint = Offset(size.width * 0.4, size.height * 0.94);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =Offset(size.width * 0.72, size.height *0.94);
    var secondEndPoint = Offset(size.width * 0.88, size.height * 0.8);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =Offset(size.width * 0.96 , size.height * 0.75);
    var thirdEndPoint = Offset(size.width , size.height * 0.76);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);    

    path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 0.91, 0.0);

    var fourthControlPoint =Offset(size.width * 0.9 , size.height * 0.11);
    var fourthEndPoint = Offset(size.width * 0.65, size.height * 0.11);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy); 

    var fifthControlPoint =Offset(size.width * 0.22 , size.height * 0.1);
    var fifthEndPoint = Offset(size.width * 0.16, size.height * 0.21);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);     

    var sixthControlPoint =Offset(size.width * 0.13 , size.height * 0.27);
    var sixthEndPoint = Offset(0.0, size.height * 0.28);
    path.quadraticBezierTo(sixthControlPoint.dx, sixthControlPoint.dy,
        sixthEndPoint.dx, sixthEndPoint.dy); 
    //path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
} 
