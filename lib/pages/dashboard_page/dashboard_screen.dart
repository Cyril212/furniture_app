import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_app/widget/custom_app_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  ///
  ///New Product Item
  ///
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3.4,
                            child: FractionalTranslation(
                                translation: Offset(0.1, -0.15),
                                child: Image.asset(
                                  assetPath,
                                  height: (MediaQuery.of(context).size.height /
                                          MediaQuery.of(context).size.width) *
                                      80,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 17),
                            width: MediaQuery.of(context).size.width / 1.7,
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
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
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
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
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

  ///
  ///  Category Item
  ///  Image size 100 × 114
  ///
  Widget categoryItem(BuildContext context, String label,String assetPath) => Container(
      margin: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "/furniture_sub_category");
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 3.8,
              child: Image.asset(assetPath),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Text(label,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: MediaQuery.of(context).size.height / 55,
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 3.8,
                child: Text("1500 items",
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: MediaQuery.of(context).size.height / 53,
                        color: Colors.black38)))
          ],
        ),
      ));

  ///
  /// Body
  ///
  List<Widget> buildBody() => List()
    ..add(Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.2,
        child: Column(children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height / 3.4,
              width: MediaQuery.of(context).size.width,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width / 20),
              child: Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 29,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              height: MediaQuery.of(context).size.height / 29,
                              width: MediaQuery.of(context).size.width / 2,
                              alignment: Alignment(-0.75, 0),
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize:
                                        MediaQuery.of(context).size.width / 23,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height / 29,
                              width: MediaQuery.of(context).size.width / 2,
                              alignment: Alignment(0.75, 0),
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize:
                                        MediaQuery.of(context).size.width / 23,
                                    color: Colors.black38),
                              )),
                        ],
                      )),
                  Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            categoryItem(context,"Accent chairs","assets/chair2.png"),
                            categoryItem(context,"Living room furniture", "assets/chair3.png"),
                            categoryItem(context,"Unfinished furniture", "assets/sofa.png"),
                            categoryItem(context,"Office furniture", "assets/chair2.png"),
                          ]))
                ],
              ))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Stack(children: <Widget>[
                Swiper(
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      "assets/banner.png",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 3,
                  pagination: SwiperPagination(
                      alignment: Alignment(-0.9, 0.8),
                      builder:
                          DotSwiperPaginationBuilder(activeColor: Colors.red)),
                ),
                Align(
                    alignment: Alignment(-0.95, -0.85),
                    child: Text(
                      "Spring Bestsellers",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.width / 23,
                          fontWeight: FontWeight.bold),
                    ))
              ])),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 29,
            alignment: Alignment.center,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 45),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 29,
                    alignment: Alignment(-0.75, 0.0),
                    child: Text(
                      "New Product",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.width / 23,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 29,
                    alignment: Alignment(0.75, 0.0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: MediaQuery.of(context).size.width / 23,
                          color: Colors.black38),
                    )),
              ],
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5.5,
              child: Hero(
                tag: "furniture_item",
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      productItem(context, "assets/chair4.png"),
                      productItem(context, "assets/chair4.png"),
                    ]),
              ))
        ])));

  @override
  Widget build(BuildContext context) {
    print("Width:" + MediaQuery.of(context).size.width.toString());
    print("Height:" + MediaQuery.of(context).size.height.toString());
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
            child: SafeArea(
          right: false,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  child: Container(
                      margin: EdgeInsets.only(right:20),
                      alignment:Alignment.centerRight,child:
                  Icon(Icons.close)
                  )),
              SizedBox(height: MediaQuery.of(context).size.height/50),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                      margin: EdgeInsets.only(left:20),
                      alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.home,color: Colors.black26)),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                    margin: EdgeInsets.only(left:20),
                    alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.new_releases,color: Colors.black26,)),
                      Text(
                        "New product",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                    margin: EdgeInsets.only(left:20),
                    alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.beenhere,color: Colors.black26,)),
                      Text(
                        "Editor's Picks",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                    margin: EdgeInsets.only(left:20),
                    alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.label,color: Colors.black26,)),
                      Text(
                        "Top Deals",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                    margin: EdgeInsets.only(left:20),
                    alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.notifications,color: Colors.black26,)),
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12.5,
                  child: Container(
                    margin: EdgeInsets.only(left:20),
                    alignment:Alignment.centerRight,child:
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(Icons.settings,color: Colors.black26,)),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  )),
            ],),
          ),
        )),
        backgroundColor: Colors.white,
        body: new CustomScrollView(slivers: <Widget>[
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate:
                  CustomAppBar(height: MediaQuery.of(context).size.height / 6)),
          new SliverList(delegate: SliverChildListDelegate(buildBody())),
        ]));
  }
}
