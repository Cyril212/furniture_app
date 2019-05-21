import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_app/widget/custom_app_bar.dart';
import 'package:furniture_app/widget/rounded_app_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: CustomAppBar(height:MediaQuery.of(context).size.height/6),
        extendBody: true,
        backgroundColor: Colors.white,
        body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child:Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//              Container(
//                  margin: EdgeInsets.only(bottom: 35),
//                  width: MediaQuery.of(context).size.width,
//                  height: MediaQuery.of(context).size.height / 6,
//                  child: Stack(fit: StackFit.loose, children: <Widget>[
//                    SizedBox(
//                        width: MediaQuery.of(context).size.width,
//                        height: MediaQuery.of(context).size.height,
//                        child: CustomPaint(
//                          painter:
//                              CustomToolbarShape(lineColor: Colors.deepOrange),
//                        )),
//                    Align(
//                        alignment: Alignment(0.0, 1.25),
//                        child: Container(
//                            height: MediaQuery.of(context).size.height / 14.5,
//                            padding: EdgeInsets.only(left: 30, right: 30),
//                            child: Container(
//                                decoration: new BoxDecoration(
//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Colors.black12,
//                                      blurRadius: 20.0,
//                                      // has the effect of softening the shadow
//                                      spreadRadius: .5,
//                                      // has the effect of extending the shadow
//                                      offset: Offset(
//                                        0.0, // horizontal, move right 10
//                                        5.0, // vertical, move down 10
//                                      ),
//                                    )
//                                  ],
//                                ),
//                                child: TextField(
//                                    decoration: InputDecoration(
//                                        filled: true,
//                                        fillColor: Colors.white,
//                                        prefixIcon: Icon(
//                                          Icons.search,
//                                          color: Colors.black38,
//                                        ),
//                                        focusedBorder: OutlineInputBorder(
//                                            borderSide: BorderSide(
//                                                color: Colors.white, width: 1),
//                                            borderRadius:
//                                                BorderRadius.circular(25)),
//                                        enabledBorder: OutlineInputBorder(
//                                            borderSide: BorderSide(
//                                                color: Colors.white, width: 1),
//                                            borderRadius:
//                                                BorderRadius.circular(25))))))),
//                    Align(
//                        alignment: Alignment(0.9, 0.0),
//                        child: Container(
//                            height: MediaQuery.of(context).size.height / 13,
//                            width: MediaQuery.of(context).size.width / 13,
//                            child: Icon(
//                              Icons.local_mall,
//                              color: Colors.black,
//                            ))),
//                    Align(
//                        alignment: Alignment(-0.9, 0.0),
//                        child: Container(
//                            height: MediaQuery.of(context).size.height / 13,
//                            width: MediaQuery.of(context).size.width / 13,
//                            child: Icon(
//                              Icons.menu,
//                              color: Colors.black,
//                            ))),
//                  ])),
              Container(
                  height: MediaQuery.of(context).size.height / 3.2,
                  margin: EdgeInsets.only(top:20),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 29,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment(-0.85, 0.0),
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Container(
                          height: MediaQuery.of(context).size.height / 4,
                          child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                categoryItem(context, "assets/chair2.png"),
                                categoryItem(context, "assets/chair3.png"),
                                categoryItem(context, "assets/sofa.png"),
                                categoryItem(context, "assets/chair2.png"),
                              ]))
                    ],
                  ))),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.6,
                  child: Stack(children: <Widget>[
                    Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Image.asset(
                          "assets/banner.png",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      pagination:
                          new SwiperPagination(alignment: Alignment(-0.9, 0.8)),
                    ),
                    Align(
                        alignment: Alignment(-0.95, -0.85),
                        child: Text(
                          "Spring Bestsellers",
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ))
                  ])),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment(-0.90, -0.5),
                  child: Text(
                    "New Product",
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        productItem(context, "assets/chair2.png"),
                      ]))
            ]))));
  }
}

///New Product Item
Widget productItem(BuildContext context, String assetPath) => Container(
      width: MediaQuery.of(context).size.width,
      child: Card(child: Container(padding:EdgeInsets.all(10),child: Text("Test"))),
    );

///  Category Item
///  Image size 100 × 114

Widget categoryItem(BuildContext context, String assetPath) => Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width / 3.8,
          child: Image.asset(assetPath),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 3.8,
          child: Text("Accent Chairs Furniture",
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: MediaQuery.of(context).size.height / 51,
              )),
        ),
        Container(
            width: MediaQuery.of(context).size.width / 3.8,
            child: Text("1500 items",
                style: TextStyle(
                    fontFamily: 'Avenir', fontSize: 13, color: Colors.black38)))
      ],
    ));




//class CustomToolbarShape extends CustomPainter {
//  Color lineColor;
//
//  CustomToolbarShape({this.lineColor});
//
//  @override
//  void paint(Canvas canvas, Size size) {
//    Paint paint = Paint();
//
////First oval
//    Path path = Path();
//    Rect pathGradientRect = new Rect.fromCircle(
//      center: new Offset(size.width / 4, 0),
//      radius: 270,
//    );
//
//    Gradient gradient = new LinearGradient(
//      colors: <Color>[
//        Color.fromRGBO(225, 89, 89, 1).withOpacity(1),
//        Color.fromRGBO(255, 128, 16, 1).withOpacity(1),
//      ],
//      stops: [
//        0.3,
//        1.0,
//      ],
//    );
//
//    path.lineTo(-size.width / 1.4, 0);
//    path.quadraticBezierTo(
//        size.width / 2, size.height * 2, size.width + size.width / 1.4, 0);
//
//    paint.color = Colors.deepOrange;
//    paint.shader = gradient.createShader(pathGradientRect);
//
//    paint.strokeWidth = 40;
//
//    path.close();
//
//    canvas.drawPath(path, paint);
//
////Second oval
//
//    Rect secondOvalRect = new Rect.fromPoints(
//      Offset(-size.width / 2.5, -size.height),
//      Offset(size.width * 1.4, size.height / 1.5),
//    );
//
//    gradient = new LinearGradient(
//      colors: <Color>[
//        Color.fromRGBO(225, 255, 255, 1).withOpacity(0.1),
//        Color.fromRGBO(255, 206, 31, 1).withOpacity(0.2),
//      ],
//      stops: [
//        0.0,
//        1.0,
//      ],
//    );
//    Paint secondOvalPaint = Paint()
//      ..color = Colors.deepOrange
//      ..shader = gradient.createShader(secondOvalRect);
//
//    canvas.drawOval(secondOvalRect, secondOvalPaint);
//
//    //Third oval
//
//    Rect thirdOvalRect = new Rect.fromPoints(
//      Offset(-size.width / 2.5, -size.height),
//      Offset(size.width * 1.4, size.height / 2.7),
//    );
//
//    gradient = new LinearGradient(
//      colors: <Color>[
//        Color.fromRGBO(225, 255, 255, 1).withOpacity(0.05),
//        Color.fromRGBO(255, 196, 21, 1).withOpacity(0.2),
//      ],
//      stops: [
//        0.0,
//        1.0,
//      ],
//    );
//    Paint thirdOvalPaint = Paint()
//      ..color = Colors.deepOrange
//      ..shader = gradient.createShader(thirdOvalRect);
//
//    canvas.drawOval(thirdOvalRect, thirdOvalPaint);
//
//    //Fourth oval
//    Rect fourthOvalRect = new Rect.fromPoints(
//      Offset(-size.width / 2.4, -200),
//      Offset(300, size.height / 1.12),
//    );
//
//    gradient = new LinearGradient(
//      colors: <Color>[
//        Colors.red.withOpacity(0.9),
//        Color.fromRGBO(255, 128, 16, 1).withOpacity(0.3),
//      ],
//      stops: [
//        0.3,
//        1.0,
//      ],
//    );
//    Paint fourthOvalPaint = Paint()
//      ..color = Colors.deepOrange
//      ..shader = gradient.createShader(fourthOvalRect);
//
//    canvas.drawOval(fourthOvalRect, fourthOvalPaint);
//  }
//
//  @override
//  bool shouldRepaint(CustomPainter oldDelegate) {
//    return true;
//  }
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
