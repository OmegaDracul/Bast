import 'package:flutter/material.dart';
import 'package:bast/supplemental/driverIterator.dart';

class Drivers extends StatefulWidget {
  @override
  _DriversState createState() => _DriversState();
}

class _DriversState extends State<Drivers> {
  @override
  Widget build(BuildContext context) {
    return MyDrivers();
  }
}

class MyDrivers extends StatefulWidget {
  const MyDrivers({
    Key key,
  }) : super(key: key);

  @override
  MyDriversState createState() {
    return MyDriversState();
  }
}

class MyDriversState extends State<MyDrivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drivers')),
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('List of Hospital Drivers', style: TextStyle(fontSize: 20),),
                alignment: Alignment.center,
                child: Text(
                  'List of Hospital Drivers',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            DriverBuild()
          ],
        ),
      ),
      ),
    );
  }
}
