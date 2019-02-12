import 'package:flutter/material.dart';
import '../supplemental/cardIterator.dart';


class MidwifeHome extends StatefulWidget {
  @override
  _MidwifeHomeState createState() => _MidwifeHomeState();
}

class _MidwifeHomeState extends State<MidwifeHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.05,
                          MediaQuery.of(context).size.width * 0.08,
                          0,
                          MediaQuery.of(context).size.height * 0.055,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Federal Medical Centre, Yola',
                              style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    height: 0.8,
                                    fontFamily: 'MontserratAlternate',
                                    fontWeight: FontWeight.bold
                                  ),
                              textAlign: TextAlign.start,
                              softWrap: true
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  'Lamido Zubairu Way, Yola By-Pass Yola Town, Adamawa',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white, fontSize: 14)
                                ),
                              ),
                            )
                          ],
                        ),
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
                  child: MidwifeGridBuild(),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Positioned(
                right: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.22,
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
