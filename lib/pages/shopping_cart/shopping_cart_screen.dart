import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_text_view/smart_text_view.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  ShoppingCartState createState() => ShoppingCartState();
}

class ShoppingCartState extends State<ShoppingCartScreen> {
  Widget productItem(BuildContext context, String assetPath) => Container(
      height: MediaQuery.of(context).size.height / 5.7,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      // where to position the child
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height / 6.3,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Card(
              elevation: 3,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/furniture_detail");
                  },
                  child: Container(
                      padding: EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: MediaQuery.of(context).size.width/3.4,
                            child:FractionalTranslation(
                                translation: Offset(0.1,-0.15),
                                child: Image.asset(
                                  assetPath,
                                  height: (MediaQuery.of(context).size.height / MediaQuery.of(context).size.width) * 80,
                                )), ),
                          Container(
                            margin: EdgeInsets.only(left:MediaQuery.of(context).size.width/17),
                            width: MediaQuery.of(context).size.width/1.7,
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
                                            50),
                                    child: Text("Accent Chairs Furniture",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width /
                                                27,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.width /
                                        45),
                                    child: Text(
                                        "Buy products related to lazy boy chair products and see what customers....",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black26,
                                          fontFamily: 'Avenir',
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width /
                                              30,
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.width /
                                        47),
                                    child: Text("\$800",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width /
                                                28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black38)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))),
            )),
      ]));

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
                          "Shopping cart",
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
                Flexible(
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate([
                          productItem(context, "assets/chair4.png"),
                          //   productItem(context, "assets/chair4.png"),
                        ]),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              children: <Widget>[
                                Divider(
                                  color: Colors.black12,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 15, top: 15),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          "Custom Order: Your card may be charged before the oder ships.",
                                          style: TextStyle(
                                              fontFamily: 'Avenir',
                                              color: Colors.black26,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  65,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 15, top: 10),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          "Ready to ship to the contiguous U.S and Canada in 1-4 days",
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            color: Colors.black26,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                65,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child:Container(
                                    height: MediaQuery.of(context).size.height,
                                  color: Color.fromRGBO(227, 227, 227, 1.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(left:15,top:30),
                                              child: Text("Subtotal",style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                      36,),)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(right:15,top:30),
                                              child: Text("\$1121,97",style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    39,),textAlign: TextAlign.end,)),

                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(left:15,top:15),
                                              child: Text("Shipping",style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    36,),)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(right:15,top:15),
                                              child: Text("\$25,65",style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    39,),textAlign: TextAlign.end,)),

                                        ],
                                      ),Row(
                                        children: <Widget>[
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(left:15,top:15),
                                              margin: EdgeInsets.only(bottom:10),

                                              child: Text("Estimated tax:",style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    36,),)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(right:15,top:15),
                                              margin: EdgeInsets.only(bottom:10),
                                              child: Text("\$10,87",style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    39,),textAlign: TextAlign.end,)),

                                        ],
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(horizontal: 15),
                                        child: Divider(
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(left:15,top:15),
                                              margin: EdgeInsets.only(bottom:10),

                                              child: Text("Total:",style: TextStyle(
                                                color: Color.fromRGBO(208,
                                                    2, 27, 1),
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    36,),)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              padding: EdgeInsets.only(right:15,top:15),
                                              margin: EdgeInsets.only(bottom:10),
                                              child: Text("\$1147,67",style: TextStyle(
                                                color: Color.fromRGBO(208,
                                                    2, 27, 1),
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    39,),textAlign: TextAlign.end,)),

                                        ],
                                      ),

                                     Expanded(flex: 4,
                                       child:Container()
                                     ),

                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: RichText(
                                          text: TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Avenir',
                                                  fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                      45,),
                                                text: "Questions? "),
                                            LinkTextSpan(
                                                style: TextStyle(
                                                  color: Color.fromRGBO(208,
                                                      2, 27, 1),
                                                  fontFamily: 'Avenir',
                                                  fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                      45,),
                                                text:" 1-800-934-1517",
                                                )
                                          ]),
                                        ),
                                      ),

                                    ],),
                                  )

                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/27,horizontal: MediaQuery.of(context).size.width/20),
                                      height: MediaQuery.of(context).size.height/20,
                                      child: MaterialButton(
                                        disabledColor: Color.fromRGBO(208,
                                            2, 27, 1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(2)),
                                        child: Text(
                                          "Checkout",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Avenir',
                                            fontSize: MediaQuery.of(context).size.height / 40,
                                          ),
                                        ),
                                        onPressed: null,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ), // productItem(context, "assets/chair4.png"),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            )),

        /* add child content here */
      );
}
