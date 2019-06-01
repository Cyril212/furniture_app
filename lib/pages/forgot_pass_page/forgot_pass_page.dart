import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatefulWidget {
  @override
  ForgotPassScreenState createState() {
    return ForgotPassScreenState();
  }
}

class ForgotPassScreenState extends State<ForgotPassScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
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
                height: MediaQuery.of(context).size.height / 20,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.width / 13,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 30,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 40),
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Text(
                        "Please enter your email address. You will receive a link to create a new password via email.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 16,
                        )))),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 17,
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
            Container(
                alignment: Alignment(0.8,0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 5.5,
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.send,
                        size: 30,
                        color: Colors.black,
                      ),
                      backgroundColor: Color.fromRGBO(208, 2, 27, 1),
                      onPressed: () => {},
                    )))
            ]),
        )
        /* add child content here */
        );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      new Rect.fromLTRB(0.0, 0.0, 500, 700),
      new Paint()..color = Color.fromRGBO(242, 243, 244, 100),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
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

    path.moveTo(size.width - 1, 0);

    path.quadraticBezierTo(
        size.width - 70, size.height / 2, 0, size.height / 3);
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
