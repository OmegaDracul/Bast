import 'package:flutter/material.dart';
import 'package:bast/login/third.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('Other Personal Details')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('Personal Info', style: TextStyle(fontSize: 18)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,14,0,8),
              child: InfoForm()
            )
          ],
        ),
      ),
    );
  }
}

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  final _formKey = GlobalKey<FormState>();

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
            child: DOBInput()
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "Phone Number",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: false,
                labelText: "Email",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "No. of pregnancies (Gravida)",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "No. of deliveries (Parity)",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "Number of Miscarriages",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "Number of Abortions",                                          
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: false,
                labelText: "Number of Casesarean Sections",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Are you or a relative hypertensive?',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
              child: HypertensionInput()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: PeriodInput(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: false,
                labelText: "Blood Group",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Address',
                  style: TextStyle(),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,0,0,12),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[                  
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: false,
                        labelText: "Street No.",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: false,
                        labelText: "Street",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: false,
                        labelText: "City",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: false,
                        labelText: "LGA",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:12.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: false,
                        labelText: "State",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor)
                        )
                      ),
                    ),
                  ),                  
                ],
              )
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('Next', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    //_registeredDialog();
                    Route route = MaterialPageRoute(
                      builder: (context) => Third(),
                    );
                    Navigator.push(context, route);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DOBInput extends StatefulWidget {
  @override
  _DOBInputState createState() => _DOBInputState();
}

class _DOBInputState extends State<DOBInput> {
  final _now = DateTime.now();
  DateTime _dob = DateTime.now();
  DateTime _newTime;
  bool _datePressed = false;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dob,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));      
    if (picked != null && picked != _dob)
      setState(() {
        _dob = picked;
        if (_datePressed) {
          
        }
        else{
          _datePressed = !_datePressed;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      //color: Theme.of(context).backgroundColor,
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(borderSide: BorderSide(width: _datePressed ? 2 : 1,color: _datePressed ? Theme.of(context).primaryColor : Colors.black54)),                           
      padding: EdgeInsets.fromLTRB(10,15,10,15),
      child: _datePressed ? Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('${_dob.day}-${_dob.month}-${_dob.year}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.black)),
            ],
          ) 
        ]
      ): 
      Row(
        children: <Widget>[
          Expanded(child: Text('Select Date', style: TextStyle(fontSize: 16, color: Colors.black54), softWrap: true)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:4.0),
              child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_drop_down))
            ),
          )
        ],
      ),
      onPressed: () => _selectDate(context),
    );
  }
}

class HypertensionInput extends StatefulWidget {
  @override
  _HypertensionInputState createState() => _HypertensionInputState();
}

class _HypertensionInputState extends State<HypertensionInput> {
  int _hypertensiveGroup = -1;

  void _changeRadio(int val){
    setState(() {
      _hypertensiveGroup = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Radio(
            value: 0,
            activeColor: Theme.of(context).primaryColor,
            groupValue: _hypertensiveGroup,
            onChanged: _changeRadio,
          ),
        ),
        Expanded(
          child: Text(
            'Yes'
          ),
        ),
        Expanded(
          child: Radio(
            value: 1,
            activeColor: Theme.of(context).primaryColor,
            groupValue: _hypertensiveGroup,
            onChanged: _changeRadio,
          ),
        ),
        Expanded(
          child: Text(
            'No'
          ),
        )
      ],
    );
  }
}

class PeriodInput extends StatefulWidget {
  @override
  _PeriodInputState createState() => _PeriodInputState();
}

class _PeriodInputState extends State<PeriodInput> {
  final _now = DateTime.now();
  DateTime _period = DateTime.now();
  DateTime _newTime;
  bool _datePressed = false;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _period,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));      
    if (picked != null && picked != _period)
      setState(() {
        _period = picked;
        if (_datePressed) {
          
        }
        else{
          _datePressed = !_datePressed;
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      //color: Theme.of(context).backgroundColor,
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(borderSide: BorderSide(width: _datePressed ? 2 : 1,color: _datePressed ? Theme.of(context).primaryColor : Colors.black54)),                           
      padding: EdgeInsets.fromLTRB(10,15,10,15),
      child: _datePressed ? Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('${_period.day}-${_period.month}-${_period.year}', textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.black)),
            ],
          ) 
        ]
      ): 
      Row(
        children: <Widget>[
          Expanded(flex: 3,child: Text('Select last Period Date', style: TextStyle(fontSize: 16, color: Colors.black54), softWrap: true)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:4.0),
              child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_drop_down))
            ),
          )
        ],
      ),
      onPressed: () => _selectDate(context),
    );
  }
}