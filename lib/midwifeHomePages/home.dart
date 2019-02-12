/* import 'package:flutter/material.dart';
import '../midwifeHomePages/midwifeHome.dart';
import 'package:bast/sideDrawer/sideDrawer.dart';
//import 'login/signIn.dart';
//import 'package:bast/midwife/home.dart';

class MidwifeView extends StatefulWidget {
  @override
  MidwifeViewState createState() {
    return MidwifeViewState();
  }
}

class MidwifeViewState extends State<MidwifeView> {
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BAST',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFF5a26b5), fontFamily: 'Roboto'),
      home: MidwifeHomePage(title: "BAST"),
      //initialRoute: "/SignIn",
    );
  }
}

class MidwifeHomePage extends StatefulWidget {
  MidwifeHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MidwifeHomePageState createState() => _MidwifeHomePageState();
}

class _MidwifeHomePageState extends State<MidwifeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: MidwifeHome(),
    );
  }
}
 */