import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class FurnitureSubCategoryScreen extends StatefulWidget {
  @override
  FurnitureSubCategoryState createState() => FurnitureSubCategoryState();
}

class FurnitureSubCategoryState extends State<FurnitureSubCategoryScreen> {

  var _currentValue = 0;

  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3.25),
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3),
  ];

  List<StaggeredTile> _staggeredTiles2 = const <StaggeredTile>[
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3.25),
  ];

  List<Widget> _tiles =  <Widget>[
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/chair_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/sofa_sub_category.png", isFirst: true),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/cuddler_chair_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/yellow_chair_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/chair_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/sofa_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/cuddler_chair_sub_category.png"),
     _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/yellow_chair_sub_category.png"),
  ];

  List<Widget> _tiles2 =  <Widget>[
    _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/cuddler_chair_sub_category.png"),
    _SubCotegoryItem(Color.fromRGBO(243, 242, 241, 1),"assets/yellow_chair_sub_category.png",isFirst: true),
  ];

  final List menuList = ["ACCENT CHAIRS","LIVING ROOM FURNITURE","UNFINISHED FURNITURE","OFFICE FURNITURE"];

  Widget mySwiper(List list) {
    return Expanded(
      child: Swiper(
        controller: SwiperController(),
        physics: ScrollPhysics(),
        loop: false,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          viewportFraction: 0.42,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(
                list[index].toString(),
                style: TextStyle(fontSize: 13.0),
              ),
            );
          },
      ),
    );
  }


  List<Widget> tabs() => menuList.map((item)=> Tab(child:Text(item.toString(),style: TextStyle(
      fontFamily: 'Avenir',
      fontSize: MediaQuery.of(context)
          .size
          .width /
          30,
      fontWeight: FontWeight.bold),))).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menuList.length,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: InkWell(onTap:()=> Navigator.of(context).pop(),child: Icon(Icons.arrow_back,color: Colors.black,)),
              title: Text('Living room furniture',style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  fontSize: MediaQuery.of(context)
                      .size
                      .width /
                      22,
                  fontWeight: FontWeight.bold)),
              bottom: PreferredSize(
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.black38,
                          labelColor: Color.fromRGBO(208,
                              2, 27, 1),
                          indicatorColor: Color.fromRGBO(208,
                          2, 27, 1),
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(width: 2.0,color: Colors.red),
                              insets: EdgeInsets.symmetric(horizontal:25.0)
                          ),
                          tabs: tabs()),
                    ],
                  ),
                  preferredSize: Size.fromHeight(30.0)),
              actions: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text('Filter',style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Avenir',
                      fontSize: MediaQuery.of(context)
                          .size
                          .width /
                          27,
                      fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 20.0,
            crossAxisSpacing:10.0,
            padding: const EdgeInsets.all(4.0),
          )
              ),
              Container(
                  child: StaggeredGridView.count(
                    crossAxisCount: 4,
                    staggeredTiles: _staggeredTiles2,
                    children: _tiles2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing:10.0,
                    padding: const EdgeInsets.all(4.0),
                  )
              ),
              Container(
                  child: StaggeredGridView.count(
                    crossAxisCount: 4,
                    staggeredTiles: _staggeredTiles2,
                    children: _tiles2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing:10.0,
                    padding: const EdgeInsets.all(4.0),
                  )
              ),
              Container(
                  child: StaggeredGridView.count(
                    crossAxisCount: 4,
                    staggeredTiles: _staggeredTiles2,
                    children: _tiles2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing:10.0,
                    padding: const EdgeInsets.all(4.0),
                  )
              ),
            ],
          )),
    );
  }
}
class _SubCotegoryItem extends StatelessWidget {
  _SubCotegoryItem(this.backgroundColor,this.imagePath,{this.isFirst = false});

  final Color backgroundColor;
  final bool isFirst;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: EdgeInsets.only(top:isFirst ? 20:0),
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: Container(
          child:Column(
            children: <Widget>[
              Container(
                 margin: EdgeInsets.symmetric(horizontal:15,vertical: 10),
                 alignment: Alignment.centerRight,
                  height: MediaQuery.of(context).size.height / 150,
                  child: Icon(Icons.favorite_border)),
              SizedBox(height: MediaQuery.of(context).size.height/40,),
              Image.asset(imagePath,scale: 2.8,),
              Container(height:MediaQuery.of(context).size.height/11,alignment:Alignment.bottomCenter,child: Text("\$520,5",style:  TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: MediaQuery.of(context)
                      .size
                      .width /
                      20,)),)
            ],
          ),)
      ),
    );
  }
}
//child: ListView(
//  scrollDirection: Axis.horizontal,
//  children: menuList.map<Widget>((data) {
//    final index = data[0];
//    final height = data[1];
//    return AutoScrollTag(
//      key: ValueKey(2),
//      controller: AutoScrollController(),
//      index: 2,
//      child: Text('index: $index, height: $height'),
//      highlightColor: Colors.red,
//    );
//  }).toList(),
//),
//              child: NumberPicker.integer(
//                  context: context,
//                  initialValue: _currentValue,
//                  minValue: 0,
//                  maxValue: menuList.length-1,
//                  itemExtent: MediaQuery.of(context).size.width/2.5,
//                  listViewWidth: MediaQuery.of(context).size.width,
//                  onChanged: (newValue){
//                    setState(() => _currentValue = newValue);
//                  },
//              itemList: menuList),
