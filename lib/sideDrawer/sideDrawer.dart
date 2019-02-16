import 'package:bast/login/signIn.dart';
import 'package:bast/sidebarPages/profile.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.72,
      child: Drawer(
        elevation: 40,
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
              Text('Bast',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontSize: 30)),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: IntrinsicWidth(
                      child: Column(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                builder: (context) => Profile(),
                              );
                              Navigator.push(context, route);
                            },
                            color: Colors.transparent,
                            highlightColor: Colors.white70,
                            shape: StadiumBorder(),
                            textColor: Colors.white,
                            //padding: EdgeInsets.symmetric(horizontal: 70),
                            child: Text("PROFILE"),
                          ),
                          OutlineButton(
                            onPressed: () {},
                            color: Colors.transparent,
                            highlightColor: Colors.white70,
                            shape: StadiumBorder(),
                            textColor: Colors.white,
                            //padding: EdgeInsets.symmetric(horizontal: 60),
                            child: Text("ABOUT"),
                          ),
                          OutlineButton(
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                builder: (context) => SignIn(),
                              );
                              Navigator.push(context, route);
                            },
                            color: Colors.transparent,
                            highlightColor: Colors.white70,
                            shape: StadiumBorder(),
                            textColor: Colors.white,
                            //padding: EdgeInsets.symmetric(horizontal: 70),
                            child: Text("LOGOUT"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Text("Powered by Backlinq",
                                      style: TextStyle(color: Colors.white70)),
                                  Divider(
                                    color: Color(0xFFc880cb),
                                  ),
                                  Container(
                                    child: Text(
                                      "Alpha v0.0.1\n NOT SUITABLE FOR PRODUCTION",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
