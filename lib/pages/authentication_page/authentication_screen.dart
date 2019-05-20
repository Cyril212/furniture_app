import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  AuthenticationScreenState createState() {
    return AuthenticationScreenState();
  }
}

class AuthenticationScreenState extends State<AuthenticationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        new AnimationController(duration: new Duration(seconds: 4), vsync: this)
          ..addListener(() {
            this.setState(() {});
          });

    _controller.forward();
  }


  @override
  void dispose() {
   super.dispose();
   _controller.dispose();
   this.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/authentication_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                ),
                SizedBox(
                    child:  FadeTransition(
                        opacity:
                        _controller.drive(CurveTween(curve: Curves.easeOut)),
                        child:Image.asset(
                  "assets/logo.png",
                  scale: 2.2,
                  alignment: Alignment.center,
                ))),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 15,
                  child: FadeTransition(
                      opacity:
                          _controller.drive(CurveTween(curve: Curves.easeOut)),
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2)),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/sign_up");
                        },
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 15,
                  child: FadeTransition(
                    opacity:
                    _controller.drive(CurveTween(curve: Curves.easeOut)),
                    child:MaterialButton(
                    color: Color.fromRGBO(208, 2, 27, 1),
                    shape: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(208, 2, 27, 1))),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                )),
              ],
            )),
      ) /* add child content here */,
    );
  }
}
