import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  CheckoutState createState() => CheckoutState();
}

class CheckoutState extends State<CheckoutScreen> {

  @override
  Widget build(BuildContext context) => Scaffold(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 20,
              child: Stack(children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      padding: EdgeInsets.only(left: 15.0),
                      icon:
                      Icon(Icons.close, size: 30, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.height / 37,
                          fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 40),
          ],
        )),

    /* add child content here */
  );
}
