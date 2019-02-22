import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

Geolocator _geolocator = new Geolocator();

List<Placemark> positions;
final now = new DateTime.now();


Future<void> locateUser() async {
  Position location = await Geolocator()
  .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  final List<Placemark> placemarks = await _geolocator.placemarkFromCoordinates(location.latitude, location.longitude);
  positions = placemarks;
}


main(List<String> args) async{
  await locateUser();
}


List<Map<String, dynamic>> emergencyArr = [
  {
    'name': 'Adebayo Salami',
    'time': '${now.hour} : ${now.minute} : ${now.second}',
    'severity' : 'severe'
  },
  
];

class Emergency {
  final String name;
  List<Placemark> position = positions;
  String time;
  final String severity;
   
  
  Emergency(this.name, this.time, this.severity);
}

class EmergencyBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> createEmergency(List arr) {
      List<Emergency> emergencies = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var emergency = Emergency(arr[i]['name'], arr[i]['time'], arr[i]['severity']);
        emergencies.add(emergency);
      }
      //print(drivers);

      for (var i = 0; i < emergencies.length; i++) {
        var widget = Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                  child: Text(
                    emergencies[i].name, style: TextStyle(fontSize: 20,fontFamily: 'MontserratAlternate'), textAlign: TextAlign.left,
                  ),
                ),
                Table(
                  border: TableBorder.all(color: Colors.black12, style: BorderStyle.solid, width: 1.0),
                  children: [                  
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                  Expanded(child: Center(child: Text('Location', style: TextStyle(fontSize: 16.0),))),
                                  Expanded(child: Center(child: Text('${emergencies[i].position[0].thoroughfare}, ${emergencies[i].position[0].thoroughfare}', softWrap:true,))),
                              ],
                            ),
                          )
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                  Expanded(child: Center(child: Text('Time'))),
                                  Expanded(child: Center(child: Text('${emergencies[i].time}'))),
                              ],
                            ),
                          )
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                  Expanded(child: Center(child: Text('Severity Level'))),
                                  Expanded(child: Center(child: emergencies[i].severity == 'severe' ? Icon(Icons.warning, color: Colors.red): Icon(Icons.warning, color: Colors.orange))),
                              ],
                            ),
                          )
                        )
                      ]
                    )
                  ],
                ),
              ],
            ),
          ),
        ); 
        widgets.add(widget);
      }
      return widgets;
    }

    return Column(
      children: createEmergency(emergencyArr)
    );
  }
}
