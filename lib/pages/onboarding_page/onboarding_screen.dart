import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  OnboardingScreenState createState() {
    return OnboardingScreenState();
  }
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndexPage;
  int pageLength;
  double initial = 0.0;
  double distance = 0.0;

  PageController _controller = PageController(initialPage: 0, keepPage: false);

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 3;
    super.initState();
  }

  void onLeftSwipe() {
    if (currentIndexPage <= 1) {
      _controller.animateToPage(++currentIndexPage,
          duration: Duration(milliseconds: 205), curve: Curves.fastOutSlowIn);
    } else {
      Navigator.of(context).pushNamed("/dashboard");
    }
  }

  void onRightSwipe() {
    if (currentIndexPage >= 1) {
      _controller.animateToPage(--currentIndexPage,
          duration: Duration(milliseconds: 205), curve: Curves.fastOutSlowIn);
    }
  }

  String swipeLabel() {
    switch (currentIndexPage) {
      case 0:
        return "SWIPE";
      case 1:
        return "SWIPE";
      case 2:
        return "START SHOPPING!";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            GestureDetector(
                onPanStart: (DragStartDetails details) {
                  initial = details.globalPosition.dx;
                },
                onPanUpdate: (DragUpdateDetails details) {
                  distance = details.globalPosition.dx - initial;
                },
                onPanEnd: (DragEndDetails details) {
                  initial = 0.0;

                  if (distance > 0) {
                    onRightSwipe();
                  } else {
                    onLeftSwipe();
                  }
                  //+ve distance signifies a drag from left to right(start to end)
                  //-ve distance signifies a drag from right to left(end to start)
                },
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  pageSnapping: true,
                  controller: _controller,
                  children: <Widget>[
                    Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Walkthrougth(
                          textContent: "slide1.png",
                          heightAlignment: -1,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.65),
                              child: Text("Work is better than anything",
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      fontWeight: FontWeight.bold)),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.75),
                              child: Text(
                                  "Just try it out, you would be amazed!",
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize:
                                        MediaQuery.of(context).size.height / 45,
                                  )),
                            ))
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Walkthrougth(
                          textContent: "slide2.png",
                          heightAlignment: -1.02,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.65),
                              child: Text("Work is better than anything",
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      fontWeight: FontWeight.bold)),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.75),
                              child: Text(
                                  "Just try it out, you would be amazed!",
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize:
                                        MediaQuery.of(context).size.height / 45,
                                  )),
                            ))
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Walkthrougth(
                          textContent: "slide3.png",
                          heightAlignment: -1.1,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.65),
                              child: Text("Work is better than anything",
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              25,
                                      fontWeight: FontWeight.bold)),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment(0, 0.75),
                              child: Text(
                                  "Just try it out, you would be amazed!",
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize:
                                        MediaQuery.of(context).size.height / 45,
                                  )),
                            ))
                      ],
                    ),
                  ],
                  onPageChanged: (value) {
                    setState(() {
                      currentIndexPage = value;
                    });
                  },
                )),
            Align(
              alignment: Alignment(0.0, 0.53),
              child: new DotsIndicator(
                decorator: DotsDecorator(
                    activeColor: Colors.red,
                    size: Size(MediaQuery.of(context).size.height / 70,
                        MediaQuery.of(context).size.height / 70),
                    color: Colors.black26,
                    activeSize: Size(MediaQuery.of(context).size.height / 70,
                        MediaQuery.of(context).size.height / 70)),
                position: currentIndexPage,
                dotsCount: 3,
              ),
            ),
            Align(
                alignment: Alignment(0.0, 0.97),
                child: FlatButton(
                  color: Colors.white,
                  child: Text(swipeLabel(),
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: MediaQuery.of(context).size.height / 45,
                      )),
                  onPressed: () {
                    onLeftSwipe();

                  },
                )),
          ],
        ));
  }
}

class Walkthrougth extends StatelessWidget {
  final String textContent;
  final double heightAlignment;

  Walkthrougth(
      {Key key, @required this.textContent, @required this.heightAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Align(
          alignment: Alignment(0.0, heightAlignment),
          child: Image.asset(
            "assets/" + textContent,
          )),
    );
  }
}
