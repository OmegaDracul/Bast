import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ClipOval(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(25),
                          child: Image.asset(
                            "assets/icons/homeIcons/mother.png",
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Ava Edwards',
                      style: TextStyle(
                          fontSize: 24, fontFamily: 'MontserratAlternate'),
                    ),
                  ),
                  Text(
                    'Midwife',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      //contentPadding: EdgeInsets.all(10),
                      labelText: "Emergency Phone",
                      hintText: "(+234) 800 000 000",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
