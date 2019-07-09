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
                          icon: Icon(Icons.arrow_back,
                              size: 30, color: Colors.black),
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
                    height: MediaQuery.of(context).size.height / 50),
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 1),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shipping to",
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: MediaQuery.of(context).size.height / 37,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        productItem(context),
                        productItem(context),
                        productItem(context),
                      ]),
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(243, 243, 243, 1),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 3, right: 5),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.black38,
                              size: MediaQuery.of(context).size.width / 19,
                            )),
                        Text("Add location",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: MediaQuery.of(context).size.height / 45,
                            )),
                      ]),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height / 20,
                  child: Text("Select a card",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.height / 37,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  color: Color.fromRGBO(240, 242, 246, 1),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.only(right: 15),
                        child: MaterialButton(
                          disabledColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          child: Image.asset(
                            "assets/visa.png",
                            scale: 2.5,
                          ),
                          onPressed: null,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.only(right: 15),
                        child: MaterialButton(
                          disabledColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          child: Image.asset(
                            "assets/paypal.png",
                            scale: 2.5,
                          ),
                          onPressed: null,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 4,
                        child: MaterialButton(
                          disabledColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          child: Image.asset(
                            "assets/mastercard.png",
                            scale: 2.5,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(left: 15),
                        margin: EdgeInsets.only(bottom: 10, top: 15),
                        child: Text(
                          "Shopping fee",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(right: 15),
                        margin: EdgeInsets.only(bottom: 10, top: 15),
                        child: Text(
                          "\$10,87",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.height / 44,
                          ),
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(left: 15),
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Sub-total",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(right: 15),
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "\$199,99",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.height / 44,
                          ),
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(left: 15),
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Total:",
                          style: TextStyle(
                            color: Color.fromRGBO(208, 2, 27, 1),
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(right: 15),
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "\$1147,67",
                          style: TextStyle(
                            color: Color.fromRGBO(208, 2, 27, 1),
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height / 44,
                          ),
                          textAlign: TextAlign.end,
                        )),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 1.13,
                    child: MaterialButton(
                      color: Color.fromRGBO(208, 2, 27, 1),
                      disabledColor: Color.fromRGBO(208, 2, 27, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "Payment",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.height / 40,
                        ),
                      ),
                      onPressed: null,
                    )),
              ],
            )),

        /* add child content here */
      );

  Widget productItem(BuildContext context) => Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      // where to position the child
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height / 6.7,
            width: MediaQuery.of(context).size.width / 1.1,
            alignment: Alignment.center,
            child: Card(
              color: Color.fromRGBO(243, 243, 243, 1),
              elevation: 3,
              child: Container(
                  padding: EdgeInsets.only(right: 5),
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width / 10,
                        child: Radio(),
                      ),
                      Container(
//                        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width/17),
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 20),
                                child: Text("Michelangelo Flores",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("0989975432",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontFamily: 'Avenir',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              29,
                                    )),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 50),
                                child: Text("658 Yost Island Apt, Seattle, US",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black26,
                                        fontFamily: 'Avenir',
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                29)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            )),
      ]));
}
