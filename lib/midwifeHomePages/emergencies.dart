import 'package:flutter/material.dart';
import 'package:bast/supplemental/emergencyIterator.dart';

class Emergencies extends StatefulWidget {
  @override
  _EmergenciesState createState() => _EmergenciesState();
}

class _EmergenciesState extends State<Emergencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergencies'),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          child: EmergencyBuild()
        ),
      ),
    );
  }
}