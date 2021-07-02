import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          ClipPath(
            clipper: MyCustomClipperBottom(),
            child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [ 0.3, 0.8],
          colors: [
            Colors.blue,
            Colors.blueAccent,
          ],
            )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
            
            ),
          ),
          ClipPath(
            clipper: MyCustomClipperTop(),
            child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange,
                Colors.orangeAccent,
              ],
            )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
            
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomClipperBottom extends CustomClipper<Path>{

  @override
  getClip(Size? size) {
    Path path = Path();
    path.moveTo(0, size!.height * 0.3);
     path.lineTo(0.0, size.height);
     path.lineTo(size.width * 0.11, size.height);

    var firstControlPoint = Offset(size.width * 0.12, size.height * 0.97);
    var firstEndPoint = Offset(size.width * 0.3, size.height * 0.96);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =Offset(size.width * 0.76, size.height *0.96);
    var secondEndPoint = Offset(size.width * 0.88, size.height * 0.84);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =Offset(size.width * 0.99 , size.height * 0.75);
    var thirdEndPoint = Offset(size.width , size.height * 0.76);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
    thirdEndPoint.dx, thirdEndPoint.dy);    
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class MyCustomClipperTop extends CustomClipper<Path>{

  @override
  getClip(Size? size) {
    Path path = Path();
  
     path.lineTo(size!.width * 0.91, 0.0);

    var fourthControlPoint =Offset(size.width * 0.85 , size.height * 0.06);
    var fourthEndPoint = Offset(size.width * 0.65, size.height * 0.05);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy); 

    var fifthControlPoint =Offset(size.width * 0.1 , size.height * 0.06);
    var fifthEndPoint = Offset(size.width * 0.07, size.height * 0.21);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);     

    var sixthControlPoint =Offset(size.width * 0.05 , size.height * 0.26);
    var sixthEndPoint = Offset(0.0, size.height * 0.28);
    path.quadraticBezierTo(sixthControlPoint.dx, sixthControlPoint.dy,
        sixthEndPoint.dx, sixthEndPoint.dy); 
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
