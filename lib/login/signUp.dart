import 'package:flutter/material.dart';
import 'signIn.dart';
//import 'package:bast/app.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _selectedHospital = 'Select a hospital';

  void _registeredDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          title: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.check_box,
                  color: Colors.green,
                  size: 78,
                ),
              ),
              Text(
                "Account Created!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: Text(
            "Tap OKAY to proceed",
            style: TextStyle(fontSize: 13, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.grey[700],
              textColor: Colors.white,
              shape: StadiumBorder(),
              child: Text("OKAY"),
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => SignIn(),
                );
                Navigator.push(context, route);
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Color(0xFF340274),
                Color(0xFF722ea7),
                Color(0xFF813d83),
                Color(0xFF914394),
              ],
              stops: [0.0, 0.5, 0.8, 1.0],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 57, 0, 35),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/icons/homeIcons/logo.png",
                      fit: BoxFit.contain,
                      scale: 4.2,
                    ),
                  ),
                ),
                Text(
                  'Bast',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontSize: 45),
                ),
                Form(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: TextFormField(
                                    // enabled: false,
                                    //initialValue: '4',
                                    style: TextStyle(color: Colors.white),
                                    //keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                                      filled: true,
                                      labelText: "First Name",
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.text_format,
                                        color: Colors.white,
                                      ),
                                      //fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: TextFormField(
                                    // enabled: false,
                                    //initialValue: '4',
                                    style: TextStyle(color: Colors.white),
                                    //keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                                      filled: true,
                                      labelText: "Last Name",
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.text_format,
                                        color: Colors.white,
                                      ),
                                      //fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: TextFormField(
                                      // enabled: false,
                                      //initialValue: '4',
                                      style: TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                                        filled: true,
                                        labelText: "Email",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        ),
                                        //fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: TextFormField(
                                      // enabled: false,
                                      //initialValue: '4',
                                      style: TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                                        filled: true,
                                        labelText: "Phone",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                        ),
                                        //fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: TextFormField(
                                      // enabled: false,
                                      style: TextStyle(color: Colors.white),
                                      obscureText: true,
                                      //keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.fromLTRB(14, 20, 0, 2),
                                        filled: true,
                                        labelText: "Password",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                        ),
                                        //fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 3, 0, 3),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            iconSize: 0,
                                            //value: this._selectPackage,
                                            //style: TextStyle(color: Colors.white),
                                            items: [
                                              'Eko Hospital',
                                              'LASUTH',
                                              'Hilton Hospital',
                                              'National Hospital',
                                            ].map(
                                              (val) {
                                                return DropdownMenuItem(
                                                  value: val,
                                                  child: Text(val),
                                                );
                                              },
                                            ).toList(),
                                            hint: Text(
                                              this._selectedHospital,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                            onChanged: (newVal) {
                                              setState(
                                                () {
                                                  this._selectedHospital =
                                                      newVal;
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: 150,
                              height: 55,
                              child: RaisedButton(
                                shape: StadiumBorder(),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 20,
                                        fontFamily: 'MontserratAlternate',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                onPressed: () {
                                  _registeredDialog();
                                },
                              ),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "Already have an account? Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => SignIn());
                              Navigator.push(context, route);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
