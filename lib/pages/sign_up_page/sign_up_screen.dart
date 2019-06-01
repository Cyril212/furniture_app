import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 17,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 20,
                child: IconButton(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.centerLeft,
                    icon: Icon(Icons.close, size: 30, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 18,
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ))),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 23,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 17,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color.fromRGBO(242, 243, 244, 100),
                            labelText: "Email",
                            labelStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            hintStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 17,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color.fromRGBO(242, 243, 244, 100),
                            labelText: "Password",
                            labelStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            hintStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 17,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color.fromRGBO(242, 243, 244, 100),
                            labelText: "Phone",
                            labelStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            hintStyle:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 51,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.15,
                child: Stack(fit: StackFit.expand, children: <Widget>[
                  Positioned(
                      child: ClipPath(
                          child: Container(
                            color: Color.fromRGBO(242, 243, 244, 100),
                          ),
                          clipper: BottomWaveClipper())),
                  Align(
                    alignment: Alignment(0.0, -0.93),
                    child: Container(
                        height: MediaQuery.of(context).size.height / 17,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color.fromRGBO(242, 243, 244, 100),
                                labelText: "Date of birth",
                                labelStyle: TextStyle(
                                    fontFamily: 'Avenir', fontSize: 17),
                                hintStyle: TextStyle(
                                    fontFamily: 'Avenir', fontSize: 17),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))))),
                  ),
                  Align(
                      alignment: Alignment(0.85, -0.35),
                      child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.height / 5,
                          child: FloatingActionButton(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                            backgroundColor: Color.fromRGBO(208, 2, 27, 1),
                            onPressed: () {
                              Navigator.pushNamed(context, "/onboarding");
                            }
                          ))),
                  Align(
                      alignment: Alignment(0.0,0.8),
                      child: Text(
                            "Already have an account? Sign In",
                            style:
                                TextStyle(fontFamily: 'Avenir', fontSize: 17),
                          )),
                ]),
              )
            ],
          )),
      /* add child content here */
    );
  }
}

//class ShapesPainter extends CustomPainter {
//  @override
//  void paint(Canvas canvas, Size size) {
//    canvas.drawRect(
//      new Rect.fromLTRB(0.0, 0.0, 500, 700),
//      new Paint()..color = Color.fromRGBO(242, 243, 244, 100),
//    );
//  }
//
//  @override
//  bool shouldRepaint(CustomPainter oldDelegate) => false;
//}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

/*Rectangle*/
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.moveTo(size.width, 0);

    path.quadraticBezierTo(
        size.width - 90, size.height / 1.4, 0, size.height / 2.4);
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
