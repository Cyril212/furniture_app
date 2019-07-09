import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

class CustomAppBar extends SliverPersistentHeaderDelegate {
  double height;

  CustomAppBar({this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
        color: Colors.transparent,
        child: Stack(fit: StackFit.loose, children: <Widget>[
            Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: height,
                child: ClipPath(
                  clipper: BottomWaveClipper(),
                  child: CustomPaint(
                    painter: CustomToolbarShape(lineColor: Colors.deepOrange),
                  ),
                )),
            Align(
                alignment: Alignment(0.0, 1.25),
                child: Container(
                    height: MediaQuery.of(context).size.height / 14.5,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                        decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20.0,
                              // has the effect of softening the shadow
                              spreadRadius: .5,
                              // has the effect of extending the shadow
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                        ),
                        child: TextField(
                            onSubmitted: (submittedText) {
                              if (submittedText.isNotEmpty) {
                                Navigator.of(context).pushNamed("/search");
                              }
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(25)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius:
                                        BorderRadius.circular(25))))))),
            Align(
                alignment: Alignment(0.9, 0.0),
                child: Container(
                    height: MediaQuery.of(context).size.height / 13,
                    width: MediaQuery.of(context).size.width / 13,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/shopping_cart");
                      },
                      child: Icon(
                        Icons.local_mall,
                        color: Colors.black,
                      ),
                    ))),
            Align(
                alignment: Alignment(-0.9, 0.0),
                child: Container(
                    height: MediaQuery.of(context).size.height / 13,
                    width: MediaQuery.of(context).size.width / 13,
                    child: InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )))),
          ])
        );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CustomToolbarShape extends CustomPainter {
  final Color lineColor;

  CustomToolbarShape({this.lineColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    //First oval
    Path path = Path();
    Rect pathGradientRect = new Rect.fromCircle(
      center: new Offset(size.width / 4, 0),
      radius: size.width/1.4,
    );

    Gradient gradient = new LinearGradient(
      colors: <Color>[
        Color.fromRGBO(225, 89, 89, 1).withOpacity(1),
        Color.fromRGBO(255, 128, 16, 1).withOpacity(1),
      ],
      stops: [
        0.3,
        1.0,
      ],
    );

    path.lineTo(-size.width / 1.4, 0);
    path.quadraticBezierTo(
        size.width / 2, size.height * 2, size.width + size.width / 1.4, 0);

    paint.color = Colors.deepOrange;
    paint.shader = gradient.createShader(pathGradientRect);

    paint.strokeWidth = 40;

    path.close();

    canvas.drawPath(path, paint);

    //Second oval
    Rect secondOvalRect = new Rect.fromPoints(
      Offset(-size.width / 2.5, -size.height),
      Offset(size.width * 1.4, size.height / 1.5),
    );

    gradient = new LinearGradient(
      colors: <Color>[
        Color.fromRGBO(225, 255, 255, 1).withOpacity(0.1),
        Color.fromRGBO(255, 206, 31, 1).withOpacity(0.2),
      ],
      stops: [
        0.0,
        1.0,
      ],
    );
    Paint secondOvalPaint = Paint()
      ..color = Colors.deepOrange
      ..shader = gradient.createShader(secondOvalRect);

    canvas.drawOval(secondOvalRect, secondOvalPaint);

    //Third oval

    Rect thirdOvalRect = new Rect.fromPoints(
      Offset(-size.width / 2.5, -size.height),
      Offset(size.width * 1.4, size.height / 2.7),
    );

    gradient = new LinearGradient(
      colors: <Color>[
        Color.fromRGBO(225, 255, 255, 1).withOpacity(0.05),
        Color.fromRGBO(255, 196, 21, 1).withOpacity(0.2),
      ],
      stops: [
        0.0,
        1.0,
      ],
    );
    Paint thirdOvalPaint = Paint()
      ..color = Colors.deepOrange
      ..shader = gradient.createShader(thirdOvalRect);

    canvas.drawOval(thirdOvalRect, thirdOvalPaint);

    //Fourth oval
    Rect fourthOvalRect = new Rect.fromPoints(
      Offset(-size.width / 2.4, -size.width/1.875),
      Offset(300, size.height / 1.12),
    );

    gradient = new LinearGradient(
      colors: <Color>[
        Colors.red.withOpacity(0.9),
        Color.fromRGBO(255, 128, 16, 1).withOpacity(0.3),
      ],
      stops: [
        0.3,
        1.0,
      ],
    );
    Paint fourthOvalPaint = Paint()
      ..color = Colors.deepOrange
      ..shader = gradient.createShader(fourthOvalRect);

    canvas.drawOval(fourthOvalRect, fourthOvalPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    /*Rectangle*/
    path.moveTo(-size.width/1.6, 0);
    path.quadraticBezierTo(
        size.width/2, size.height*2, size.width+size.width/1.6, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
