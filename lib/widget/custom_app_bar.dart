
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {

  final double height;

  CustomAppBar({this.height});

  @override
  State<StatefulWidget> createState() => new CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);

}
class CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(color:Colors.transparent,child:
    LayoutBuilder(builder: (context, constraint) {
        return Stack(fit: StackFit.loose, children: <Widget>[
          Container(
            color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child:CustomPaint(
                willChange: false,
                painter:
                CustomToolbarShape(lineColor: Colors.deepOrange),
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
                              0.0, // horizontal, move right 10
                              5.0, // vertical, move down 10
                            ),
                          )
                        ],
                      ),
                      child: TextField(
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
                                  borderRadius:
                                  BorderRadius.circular(25)),
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
                  child: Icon(
                    Icons.local_mall,
                    color: Colors.black,
                  ))),
          Align(
              alignment: Alignment(-0.9, 0.0),
              child: Container(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 13,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))),
        ]);}));
  }

}

class CustomToolbarShape extends CustomPainter {
  Color lineColor;

  CustomToolbarShape({this.lineColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
//First oval
    Path path = Path();
    Rect pathGradientRect = new Rect.fromCircle(
      center: new Offset(size.width / 4, 0),
      radius: 270,
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
      Offset(-size.width / 2.4, -200),
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