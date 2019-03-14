import 'package:flutter/material.dart';
import 'package:bast/app.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Almost there...')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            //Text('Personal Third', style: TextStyle(fontSize: 18)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,14,0,8),
              child: ThirdForm()
            )
          ],
        ),
      ),
    );
  }
}

class ThirdForm extends StatefulWidget {
  @override
  _ThirdFormState createState() => _ThirdFormState();
}

class _ThirdFormState extends State<ThirdForm> {
  final _formKey = GlobalKey<FormState>();
  String _selectHospital = 'Select a hospital';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,                  
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "NHIS Number",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            //color: Theme.of(context).backgroundColor,    
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54)
            ),                                  
            padding: EdgeInsets.fromLTRB(20,5,10,5),
            child:  DropdownButtonHideUnderline(
              child: DropdownButton(     
                //value: this._selectPackage,                                 
                  items: [
                    'Mercy Hospital',
                    'Mercy Hospital',
                    'Mercy Hospital',
                    'Mercy Hospital',
                    'Once Hospital'
                    ].map((val){
                    return DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    );
                  }).toList(),
                  hint: Text(this._selectHospital, style: TextStyle(color: Colors.grey,fontSize: 16)),                                      
                  onChanged: (newVal){
                    setState(() {
                      this._selectHospital = newVal;

                    });                                      
                  }
                ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "Partner's Phone Number",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Sign Up', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: "BAST",
                            ),
                      );
                      Navigator.push(context, route);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

