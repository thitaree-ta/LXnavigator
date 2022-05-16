import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEight.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEleven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFive.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFour.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothNine.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothOne.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSeven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSix.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTen.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothThree.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTwo.dart';
import 'package:photo_view/photo_view.dart';

class IndoorMap extends StatefulWidget {
  @override
  _IndoorMapState createState() => _IndoorMapState();
}

class _IndoorMapState extends State<IndoorMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('LX Navigator'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  child: ClipRect(
                    child: PhotoView(
                      imageProvider: const AssetImage(
                          "assets/images/indoormap/lxfirstfloor.jpg"),
                      maxScale: PhotoViewComputedScale.covered * 2.0,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      initialScale: PhotoViewComputedScale.covered,
                    ),
                  ),
                ),

                //column 0
                Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                ),
                //column 1
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'VR AR MR',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothOne()));
                              }),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'WORKSHOP',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothTwo()));
                              }),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'DESIGN STUDIES',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothThree()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 2
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'SELF DIRECTED LEARNING',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothFour()));
                              }),
                        ),
                      ),
                      //
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'ACTIVE EXHIBTION',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothFive()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 3
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'ESCAPE ROOM',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothSix()));
                              }),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'PEEL AND WATCH',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothSeven()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 4
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'MC. SHOW ROOM',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothEight()));
                              }),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'LX BUILDING STUDY',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothNine()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
                //column 5
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'ENTREPRENEUR INNOVATION SHOW CART',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothTen()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
                //column 6
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'POPUP EXHIBITION',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BoothEleven()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
                //column 6
              ],
            ),
          ),
        ],
      ),
    );
  }
}
