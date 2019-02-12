import 'package:flutter/material.dart';

bool _pressed = true;
bool _healthy = true;

class MyMedRecords extends StatefulWidget {
  @override
  _MyMedRecordsState createState() => _MyMedRecordsState();
}

class _MyMedRecordsState extends State<MyMedRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Medical Records",
          style: TextStyle(fontFamily: "Comfortaa"),
        ),
      ),
      body: MedRecords(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          // Make sure we call setState! This will tell Flutter to rebuild the
          // UI with our changes!
          setState(() {
            _pressed = !_pressed;
          });
        },
        tooltip: 'Toggle Options',
        child: _pressed ? Icon(Icons.add) : Icon(Icons.remove),
      ),
    );
  }
}

class MedRecords extends StatefulWidget {
  @override
  _MedRecordsState createState() => _MedRecordsState();
}

class _MedRecordsState extends State<MedRecords> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.08),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Ava Edward',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'MontserratAlternate',
                                        fontSize: 24),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Patient ID: FMC/YL/SH/0501',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'MontserratAlternate',
                                        fontSize: 10),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  //child: GridBuild(),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.30),
                child: RecordsForm()
              ),
              Positioned(
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.18 + 40,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.04),
                    child: Container(
                      // decoration: BoxDecoration(
                      //   border: Border(
                      //       top: BorderSide(),
                      //       right: BorderSide(),
                      //       left: BorderSide(),
                      //       bottom: BorderSide()),
                      //   shape: BoxShape.rectangle,
                      //   color: Colors.white,
                      // ),
                      color: _pressed ? Colors.transparent : Colors.white,
                      width: MediaQuery.of(context).size.width -
                          (MediaQuery.of(context).size.width * 0),
                      height: 140,
                      child: Center(
                        child: AnimatedOpacity(
                          opacity: _pressed ? 0.0 : 1.0,
                          duration: Duration(milliseconds: 200),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: (MediaQuery.of(context).size.width -
                                          (MediaQuery.of(context).size.width *
                                              0.04) -
                                          55) *
                                      0.25,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/icons/medRecords/Group_1.png',
                                            width: 40,
                                            height: 40),
                                        Container(
                                          child: Text('2 weeks to Delivery',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                width: (MediaQuery.of(context).size.width -
                                        (MediaQuery.of(context).size.width *
                                            0.04)) *
                                    0.25,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/icons/medRecords/Group_2.png',
                                          width: 40,
                                          height: 40),
                                      Container(
                                        child: Text('3 successful pregnancies',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: (MediaQuery.of(context).size.width -
                                        (MediaQuery.of(context).size.width *
                                            0.04)) *
                                    0.25,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                          'assets/icons/medRecords/Compound Path_1.png',
                                          width: 40,
                                          height: 40),
                                      Container(
                                        child: Text('2 successful deliveries',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width: (MediaQuery.of(context).size.width -
                                          (MediaQuery.of(context).size.width *
                                              0.04)) *
                                      0.25,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            _healthy
                                                ? 'assets/icons/medRecords/Path_1.png'
                                                : 'assets/icons/medRecords/Compound Path_1.png',
                                            width: 40,
                                            height: 40),
                                        Container(
                                          child: _healthy
                                              ? Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Overall Health',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      'Good',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                )
                                              : Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Overall Health',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      'Good',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.18 - 42.5,
                child: Material(
                  elevation: 2.0,
                  shadowColor: Colors.white,
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/icons/homeIcons/mother.png",
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.30 - 30,
                child: AnimatedOpacity(
                  opacity: _pressed ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 200),
                  child: Text(
                    "Home / Hospital / Medical Records",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecordsForm extends StatefulWidget {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  _RecordsFormState createState() => _RecordsFormState();
}

class _RecordsFormState extends State<RecordsForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Detailed Medical Record - Latest",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: '2018-06-21 04:08 PM',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                          labelText: "Last Menstrual Period",
                          hintText: "2018-06-21 04:08 PM",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: '2018-04-21 05:08 PM',
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Est. Delivery Date",
                          hintText: "2018-04-21 05:08 PM",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: '2018-04-21 05:08 PM',
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(8),
                          labelText: "Gestational Age",
                          hintText: "2018-04-21 05:08 PM",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: '3rd',
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Trimester",
                          hintText: "3rd",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: "180 mmHg",
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Blood Pressure",
                          hintText: "180mmHg",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        enabled: false,
                        initialValue: "A+",
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(10),
                            labelText: "Blood Type",
                            hintText: "A+",
                            border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
