import 'package:flutter/material.dart';
import 'homeIconPages/home.dart';
import 'login/signIn.dart';
import 'sideDrawer/sideDrawer.dart';
import 'midwifeHomePages/midwifeHome.dart';

//import 'login/signUp.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BAST',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF5a26b5), fontFamily: 'Roboto'),
      home: loggedIn ? MyHomePage(title: "BAST") : SignIn(),
      //initialRoute: "/SignIn",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool patient = true;

  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF2c1a4c),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text(
                widget.title,
                style: TextStyle(fontFamily: "Comfortaa"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 102),
              child: ClipOval(
                child: Image.asset(
                  "assets/icons/homeIcons/logo.png",
                  fit: BoxFit.contain,
                  height: 30,
                ),
              ),
            ),
          ],
        ),

        //centerTitle: true, // // child: Image.asset('icons/homeIcons.png')//
      ),
      body: patient ? Home(scaffoldKey : _scaffoldKey) : MidwifeHome(),
    );
  }
}
