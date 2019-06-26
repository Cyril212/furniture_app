import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

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
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      padding: EdgeInsets.all(15.0),
                      icon: Icon(Icons.close, size: 30, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
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
                        "Login",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ))),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 13.5,
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
                    width: 150,
                    height: 150,
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
                height: MediaQuery.of(context).size.height / 70,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 27,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/forgot_pass");
                              },child:Text(
                            "Forgot your password?",
                            style:
                                TextStyle(fontFamily: 'Avenir', fontSize: MediaQuery.of(context).size.height/40),
                          ))))),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 18,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.27,
                child: Stack(fit: StackFit.expand, children: <Widget>[
                  ClipPath(
                      child:
                          Container(color: Color.fromRGBO(242, 243, 244, 100)),
                      clipper: BottomWaveClipper()),
                  Align(
                      alignment: Alignment(0.8, -0.9),
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
                              Navigator.pushNamed(context, "/dashboard");
                            },
                          ))),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 30
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Login with social",
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                color: Colors.white,
                                child: Container(
                                    height: 60,
                                    width: 90,
                                    child: Image.asset(
                                      "assets/google_icon.png",
                                      scale: 1.5,
                                    )),
                                margin: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 20),
                              ),
                              Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                color: Colors.white,
                                child: Container(
                                    height: 60,
                                    width: 90,
                                    child: Image.asset(
                                      "assets/facebook_icon.png",
                                      scale: 1.5,
                                    )),
                              ),
                            ],
                          )))
                ]),
              )
            ],
          )),
      /* add child content here */
    );
  }
}

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
        size.width - 70, size.height / 1.6, 0, size.height / 2.8);
    path.lineTo(0, 0);

    path.close();


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
