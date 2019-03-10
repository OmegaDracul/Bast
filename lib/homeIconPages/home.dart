import 'package:flutter/material.dart';
import '../supplemental/cardIterator.dart';

class Home extends StatelessWidget {
  final GlobalKey scaffoldKey;

  Home({Key key, this.scaffoldKey}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.225,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.54,
                          MediaQuery.of(context).size.height * 0.02,
                          0,
                          MediaQuery.of(context).size.height * 0.055),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: Text(
                                'No. 30 Faramo drive next to Kehinde close before Allen Plaza.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    height: 0.8),
                                textAlign: TextAlign.end,
                                softWrap: true),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Ava Edward',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'MontserratAlternate',
                                    fontSize: 24),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Patient ID: FMC/YL/SH/0501',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'MontserratAlternate',
                                    fontSize: 10),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  // child: GridView.builder(
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2
                  //   ),
                  //   itemBuilder: (context, int) {
                  //     return IconCard();
                  //   },
                  // )
                  //     //children: <Widget>[List.generate(8, generator)],
                  child: GridBuild(scaffoldKey : scaffoldKey),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Positioned(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.225 - 43.5,
                child: Material(
                  elevation: 2.0,
                  shadowColor: Colors.white,
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/icons/homeIcons/mother.png",
                      scale: 11,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.30 - 30,
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
