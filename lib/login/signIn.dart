import 'package:flutter/material.dart';
import 'signUp.dart';
import 'package:bast/app.dart';
// import '../midwifeHomePages/home.dart';
// import 'package:bast/midwifeHomePages/midwifeHome.dart';
//import 'package:bast/focusNode.dart';

// bool _pressed = true;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}


class _SignInState extends State<SignIn> {
  //FocusNode _focusNodePatientID = FocusNode();
  //FocusNode _focusNodePassword = FocusNode();

  // void _registeredDialog() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Column(
  //           children: <Widget>[
  //             Icon(Icons.lightbulb_outline)
  //           ],
  //         ),
  //       );
  //     }
  //   );
  // }
  String role = "midwife";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Form(
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
              physics: AlwaysScrollableScrollPhysics(),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 40, 30, 10),
                    child: TextFormField(
                      //focusNode: _focusNodePatientID,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: "Patient ID",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.portrait,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      //focusNode: _focusNodePassword,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: FlatButton(
                          child: Text(
                            "New? Sign Up!",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                              builder: (context) => SignUp(),
                            );
                            Navigator.push(context, route);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                        child: FlatButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            // setState(
                            //   () {
                            //     _pressed = !_pressed;
                            //   },
                            // );
                          },
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      width: 150,
                      height: 55,
                      child: RaisedButton(
                        shape: StadiumBorder(),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 24,
                                fontFamily: 'MontserratAlternate',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          /* if (role == 'midwife') {
                            Route route = MaterialPageRoute(
                              builder: (context) => MidwifeView(),
                            );
                            Navigator.push(context, route);
                          } else {
                            Route route = MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                title: "BAST",
                              ),
                            );
                            Navigator.push(context, route);
                          } */
                          Route route = MaterialPageRoute(
                            builder: (context) => MyHomePage(
                                  title: "BAST",
                                ),
                          );
                          Navigator.push(context, route);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}