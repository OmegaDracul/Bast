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
      body: ProfileWidget(),
    );
  }
}

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    Key key,
  }) : super(key: key);

  @override
  ProfileWidgetState createState() {
    return ProfileWidgetState();
  }
}

class ProfileWidgetState extends State<ProfileWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
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
          ),
          Expanded(
            child: Form(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(10),
                            labelText: "Update Phone Number",
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(10),
                            labelText: "Update Email Address Number",
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.all(10),
                            labelText: "Update Address",
                            //labelStyle: TextStyle(color: Co),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple, width: 2),
                            ),
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              //contentPadding: EdgeInsets.all(10),
                              labelText: "Update Password",
                              //labelStyle: TextStyle(color: Co),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 2),
                              ),
                              fillColor: Colors.transparent,
                              suffixIcon: IconButton(
                                icon: _obscureText
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          width: 100,
                          height: 100,
                          child: RaisedButton(
                            shape: StadiumBorder(),
                            color: Colors.deepPurple,
                            child: Center(
                              child: Text(
                                "Update",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'MontserratAlternate',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/* class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
} */
