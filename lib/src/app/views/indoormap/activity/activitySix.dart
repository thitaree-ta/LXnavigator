import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//Escape Room Booth
class ActivitySix extends StatefulWidget {
  @override
  _ActivitySixState createState() => _ActivitySixState();
}

class _ActivitySixState extends State<ActivitySix> {
    @override
   Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('rooms')
            .document('ROOM 101')
            .collection('booths')
            .document('booth6')
            .collection('activities')
            .document('activity6')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return Scaffold(
                appBar: AppBar(title: Text('Activity')),
                body: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          //column 0
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 50.0),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: new Center(
                                    child: Container(
                                      height: 450,
                                      width: 330,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)
                                            ),
                                            
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // circle on the top right
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 70.0, horizontal: 1.0),
                                alignment: Alignment(0.9, -0.5),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 3),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 150.0, horizontal: 65.0),
                                  child: RichText(
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      // style: new TextStyle(
                                      //   fontSize: 14.0,
                                      //   color: Colors.black,
                                      // ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: snapshot.data['boothName'] +
                                                '\n\n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.black,
                                            )),
                                        TextSpan(
                                            text: snapshot
                                                    .data['activityTimeStart'] +
                                                ' - ' +
                                                snapshot
                                                    .data['activityTimeEnd'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            )),
                                        TextSpan(
                                            text: snapshot.data['roomID'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            )),
                                        TextSpan(
                                            text: 'Activity Details'+
                                                '\n\n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.black,
                                            )),
                                        TextSpan(
                                            text: snapshot.data['description'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  ),

                                  // height: 450,
                                  // width: 300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
          }
        });
  }
}
// imageProvider: const AssetImage("assets/images/indoormap/lxfirstfloor.jpg",),
