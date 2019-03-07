import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
//import 'dart:async';

class MySOS extends StatefulWidget {
  @override
  _MySOSState createState() => _MySOSState();
}

class _MySOSState extends State<MySOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My SOS",
          style: TextStyle(fontFamily: "Comfortaa"),
        ),
      ),
      body: SOS(),
    );
  }
}

class SOS extends StatefulWidget {
  @override
  _SOSState createState() => _SOSState();
}

class _SOSState extends State<SOS> {
  /* Geolocator geolocator = Geolocator();

  Position userLocation;

  @override
  void initState() {
    super.initState();
    _getLocation().then(
      (position) {
        userLocation = position;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            userLocation == null
                ? CircularProgressIndicator()
                : Text(
                    "Location:" +
                        userLocation.latitude.toString() +
                        " " +
                        userLocation.longitude.toString(),
                  ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  _getLocation().then(
                    (value) {
                      setState(
                        () {
                          userLocation = value;
                        },
                      );
                    },
                  );
                },
                color: Colors.deepPurple,
                child: Text(
                  "Get Location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<Position> _getLocation() async {
    var currentLocation;
    try {
      currentLocation = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  } */

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
