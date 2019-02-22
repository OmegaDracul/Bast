import 'package:flutter/material.dart';

List<Map<String, dynamic>> driverArr = [
  {
    'name': 'Adebayo Salami',
    'phoneNo': '+234 8178 82 1111',
    'ambulanceId': '140064',
    'availability' : true
  },
  {
    'name': 'Pharo is good',
    'phoneNo': '+234 8178 82 3451',
    'ambulanceId': '140064',
    'availability' : false
  },
  {
    'name': 'Junior Ogbonna',
    'phoneNo': '+234 9321 82 3451',
    'ambulanceId': '14143',
    'availability' : true
  },
  {
    'name': 'Ahmed Musa',
    'phoneNo': '+234 9321 82 3451',
    'ambulanceId': '14143',
    'availability' : false
  }
  
];

class Driver {
  final String name;
  final String phoneNo;
  final String ambulanceId;
  final bool availability;

  Driver(this.name, this.phoneNo, this.ambulanceId, this.availability);
}

class DriverBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> createList(List arr) {
      List<Driver> drivers = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var driver = Driver(arr[i]['name'], arr[i]['phoneNo'], arr[i]['ambulanceId'], arr[i]['availability']);
        drivers.add(driver);
      }
      //print(drivers);

      for (var i = 0; i < drivers.length; i++) {
        var widget = Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),                
                margin: EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[ 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 20.0),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Text(
                                drivers[i].name,
                                style: TextStyle(fontSize: 18
                                ),
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                drivers[i].availability ? Icons.event_available : Icons.event_busy
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  Container(
                    //height: 80,
                    decoration: new BoxDecoration(
                      color: Colors.black87,
                      borderRadius: new BorderRadius.only(
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text('Ambulance ID : ${drivers[i].ambulanceId}', style: TextStyle(color: Colors.white, fontSize: 14),),
                          ),
                          Text('Phone No. : ${drivers[i].phoneNo}', style: TextStyle(color: Colors.white, fontSize: 14),),
                        ],
                      ),
                    ),
                  )
                ]
              )
            ),
        ); 
        widgets.add(widget);
      }
      return widgets;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: createList(driverArr),
      )
    );
  }
}
