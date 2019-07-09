import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FurnitureDetailScreen extends StatefulWidget {
  @override
  FurnitureDetailScreenState createState() {
    return FurnitureDetailScreenState();
  }
}

class FurnitureDetailScreenState extends State<FurnitureDetailScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
            width: MediaQuery.of(context).size.width / 3.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: MaterialButton(
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(208, 2, 27, 1))),
              onPressed: null,
              child: Icon(
                Icons.favorite_border,
                color: Color.fromRGBO(208, 2, 27, 1),
                size: 22.5,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.width / 6.5,
            child: MaterialButton(
              disabledColor: Color.fromRGBO(208, 2, 27, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Add to card",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Avenir',
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          Container(
            color: Color.fromRGBO(250, 250, 249, 1),
            height: MediaQuery.of(context).size.height / 2.1,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Stack(children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                alignment: Alignment(-1, -0.75),
                child: IconButton(
                    padding: EdgeInsets.all(15.0),
                    icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              Container(
                  alignment: Alignment(0.0, 0.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Container(
                      alignment: Alignment(0.0, 0.8),
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Hero(
                        tag: "furniture_item",
                        child: Image.asset(
                          "assets/couch.png",
                        ),
                      )))
            ]),
          ),
          Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 25,
                  vertical: MediaQuery.of(context).size.width / 50),
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 8,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 25),
                          child: ClipOval(
                              child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            height: MediaQuery.of(context).size.width / 8,
                            color: Color.fromRGBO(208, 2, 27, 1),
                          ))),
                      Container(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 25),
                          child: ClipOval(
                              child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            height: MediaQuery.of(context).size.width / 8,
                            color: Color.fromRGBO(208, 2, 27, 1),
                          ))),
                      Container(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 25),
                          child: ClipOval(
                              child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            height: MediaQuery.of(context).size.width / 8,
                            color: Color.fromRGBO(208, 2, 27, 1),
                          ))),
                      Container(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 25),
                          child: ClipOval(
                              child: Container(
                            width: MediaQuery.of(context).size.width / 8,
                            height: MediaQuery.of(context).size.width / 8,
                            color: Color.fromRGBO(208, 2, 27, 1),
                          ))),
                    ],
                  );
                },
                itemCount: 5,
                pagination: SwiperPagination(
                    alignment: Alignment(0.0, densityDependentAlign()),
                    builder: DotSwiperPaginationBuilder(
                        size: MediaQuery.of(context).size.width / 38.5,
                        activeColor: Color.fromRGBO(208, 2, 27, 1),
                        color: Colors.black12)),
              )),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 17.5),
              child: Divider(
                color: Colors.black38,
              )),
          Expanded(
            child: ListView(shrinkWrap: true, children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 17.5),
                alignment: Alignment.centerLeft,
                child: Text("Corner sofa, 2 seat",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: MediaQuery.of(context).size.height / 48,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(left: 22),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 55),
                alignment: Alignment.centerLeft,
                child: Text(
                  "COBBS CONVERTIBLE",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: MediaQuery.of(context).size.height / 37,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$1,650",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: MediaQuery.of(context).size.height / 35,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 45),
                alignment: Alignment.centerLeft,
                child: Text(
                  "With open end, Farsta dark brown",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'Avenir',
                      fontSize: MediaQuery.of(context).size.height / 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Perfect for unexpected overnight guests, or just a handy spot for a nap, futons are a great option for adding a touch of seating that can easily be...",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: MediaQuery.of(context).size.height / 48,
                  ),
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }

  double densityDependentAlign() => MediaQuery.of(context).size.height > 600
      ? MediaQuery.of(context).size.height > 700 ? 1.7 : 2.1
      : 2.5;
}
