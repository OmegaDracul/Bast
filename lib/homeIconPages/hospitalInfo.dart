import 'package:flutter/material.dart';

class MyHospitalInfo extends StatefulWidget {
  @override
  _MyHospitalInfoState createState() => _MyHospitalInfoState();
}

class _MyHospitalInfoState extends State<MyHospitalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hospital Info",
          style: TextStyle(fontFamily: "Comfortaa"),
        ),
      ),
      body: InfoForm(),
    );
  }
}

class InfoForm extends StatefulWidget {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Theme.of(context).primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, MediaQuery.of(context).size.height * 0.02, 25, 0),
                    child: Image.asset(
                      "assets/icons/homeIcons/hospital-rec.png",
                      scale: 9,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Federal Medical Center",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MontserratAlternate",
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Hospital ID: FMC/YL/01",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
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
                        // enabled: false,
                        // initialValue: '4',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                          labelText: "Doctors",
                          hintText: "4",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: '+234 8178 72 0000',
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Emergency Phone",
                          hintText: "(+234) 800 000 000",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: 'Nigeria',
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(8),
                          labelText: "Country",
                          hintText: "Nigeria",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: 'Ondo',
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "State",
                          hintText: "Ondo",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: "Jimeta",
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "LGA",
                          hintText: "Jimeta",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(10),
                            labelText: "Ward",
                            hintText: "Enter a ward name here",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: 'Peggy Oshibogu',
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Street Name",
                          hintText: "Enter street name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextFormField(
                        // enabled: false,
                        // initialValue: 'No. 4',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //contentPadding: EdgeInsets.all(10),
                          labelText: "Street Number",
                          hintText: "1",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
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
