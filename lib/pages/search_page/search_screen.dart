import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  SearchScreenState createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
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
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
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
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(25)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(25)))),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 23),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 16,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: MediaQuery.of(context).size.width / 22),
                        ))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 60),
                  child: Divider(
                    color: Colors.black12,
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 25),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 20),
                 width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Text("How Keywords",style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir',
                      fontSize: MediaQuery.of(context).size.width / 22),
                  )),
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3.5,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 27),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 2.2,
        children: new List<Widget>.generate(9, (index) {
        return  GridTile(
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  border: Border.all(
                    width: 0.8,
          color: Colors.black12,
          )),
                      child:  Center(
                        child:  Text('Accent Chairs',textAlign: TextAlign.center,style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: MediaQuery.of(context).size.width / 30)),
                  ),
                    
              ),
                ),
        );
      }
      ),
      ),
    )

            ],
          )),
      /* add child content here */
    );
  }
}
