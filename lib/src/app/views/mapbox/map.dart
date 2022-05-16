import 'dart:async';
import 'package:flutter/material.dart';
import 'package:user_location/user_location.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';



class MyMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plugin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyMapPage(),
    );
  }
}

class MyMapPage extends StatelessWidget {
  var points = <LatLng>[
    //latLng ==> (latitude,Longitude)
    LatLng(13.651055698,100.496627),
    LatLng(13.6511,100.4960),
    LatLng(13.6511,100.4954),
    LatLng(13.6519,100.4954),
    LatLng(13.6521,100.4953),
    LatLng(13.6522,100.4952),
    LatLng(13.6523,100.4949),
    LatLng(13.6523,100.4943),
    LatLng(13.6523,100.4940),
    LatLng(13.6519,100.4940),
    LatLng(13.6519,100.4943),

    



  ];
  MapController mapController = MapController();
  List<Marker> markers = [];
  StreamController<LatLng> markerlocationStream = StreamController();
  UserLocationOptions userLocationOptions;
  @override
  Widget build(BuildContext context) {
    //Get the current location of marker
    markerlocationStream.stream.listen((onData) {
      // print(onData.latitude);
    });

    userLocationOptions = UserLocationOptions(
        context: context,
        mapController: mapController,
        markers: markers,
        onLocationUpdate: (LatLng pos) =>
            print("onLocationUpdate ${pos.toString()}"),
        updateMapLocationOnPositionChange: false,
        showMoveToCurrentLocationFloatingActionButton: true,
        zoomToCurrentLocationOnLoad: false,
        fabBottom: 50,
        fabRight: 50,
        verbose: true);

    //You can also change the value of updateMapLocationOnPositionChange programatically in runtime.
    //userLocationOptions.updateMapLocationOnPositionChange = false;

    return Scaffold(
     appBar: AppBar(
          title: Text('Map'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0,
    ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(13.651055698,100.496627),
          zoom: 15.0,
          plugins: [
            UserLocationPlugin(),
          ],
        ),
        layers: [
          TileLayerOptions(
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/kratua2542/ck8vhjdif1xx51irluw01huqs/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoia3JhdHVhMjU0MiIsImEiOiJjazk4bDJ5bWowM2M1M21tbnljbG9sczdtIn0.sZ0Rpfb4tarxA2TLAVMt_Q",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1Ijoia3JhdHVhMjU0MiIsImEiOiJjazk4bDJ5bWowM2M1M21tbnljbG9sczdtIn0.sZ0Rpfb4tarxA2TLAVMt_Q',
                'id': 'mapbox.mapbox-streets-v1'
              }
              ),
          PolylineLayerOptions(
            polylines: [
              Polyline(
                 points: points,
                 strokeWidth: 5.0,
                 color: Colors.red
              ),
            ]
          ),
          MarkerLayerOptions(markers: [
            
             Marker(
              width: 45.0,
              height: 45.0,
              point: new LatLng(13.651055698,100.496627),
              builder: (context) => new Container(
                child: IconButton(
                  icon: Icon(Icons.location_on),
                  color: Colors.red,
                  iconSize: 45.0,
                  onPressed: () {
                    print('Marker tapped');
                  }
                ),
              ),
            ),
              Marker(
              width: 45.0,
              height: 45.0,
              point: new LatLng(13.6519,100.4943),
              builder: (context) => new Container(
                child: IconButton(
                  icon: Icon(Icons.location_on),
                  color: Colors.deepPurple,
                  iconSize: 45.0,
                  onPressed: () {
                    print('Marker tapped');
                  }
                ),
              ),
            ),
          ]),
           MarkerLayerOptions(markers: markers),
          userLocationOptions
        ],
        mapController: mapController,
      ),
    );
  }

  void dispose() {
    markerlocationStream.close();
  }
}




