import 'package:flutter/material.dart';
import 'signIn.dart';
import 'info.dart';
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
            "Tap Ok to proceed",
            style: TextStyle(fontSize: 13, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.grey[700],
              textColor: Colors.white,
              shape: StadiumBorder(),
              child: Text("Ok"),
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => Info(),
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
                    padding: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 0.0),
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
                                        labelText: "Username",
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        prefixIcon: Icon(
                                          Icons.person,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60),
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
                                  //_registeredDialog();
                                  Route route = MaterialPageRoute(
                                    builder: (context) => Info(),
                                  );
                                  Navigator.push(context, route);
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: FlatButton(
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
