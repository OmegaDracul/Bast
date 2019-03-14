import 'package:flutter/material.dart';
import 'package:bast/supplemental/risksIterator.dart';

class Risks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Risks',style: TextStyle(fontFamily: "Comfortaa"),),         
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: (MediaQuery.of(context).size.height * 0.3) - 50,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: (MediaQuery.of(context).size.height * 0.3) - 70,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0.0,-0.3),
                            child: SizedBox(width: 200,child: Text('Faridah Sani', style: TextStyle(fontFamily: 'MontserratAlternate',color: Colors.white, fontSize: 20)))
                          ),
                          Align(
                            alignment: Alignment(0.0,0.15),
                            child:  SizedBox(width: 200,child: Text('FMC/YL/01',style: TextStyle(color: Colors.white), textAlign: TextAlign.start,))
                          ),
                        ],
                      ),
                      // Padding(                      
                      //   padding: const EdgeInsets.only(top: 30),
                      //   child: Column(                    
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       //Text('Risks', style: TextStyle(fontSize: 20, color: Colors.white)),
                      //       Text('Faridah Sani', style: TextStyle(fontFamily: 'MontserratAlternate',color: Colors.white, fontSize: 20)),
                      //       Text('FMC/YL/01',style: TextStyle(color: Colors.white))
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - ((MediaQuery.of(context).size.height * 0.3) + 130),
              child : RisksBuild()
            )
          ],
        ),
      ),
    );
  }
}


class RisksExpansionTiles extends StatefulWidget {
  @override
  _RisksExpansionTilesState createState() => _RisksExpansionTilesState();
}

class _RisksExpansionTilesState extends State<RisksExpansionTiles> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      headerBackgroundColor: Colors.yellow[900],
      backgroundColor: Colors.yellow[800],
      initiallyExpanded: true,
      title: Text(
        "Lorem ipsum dolor sit amet",
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(Icons.question_answer, color: Colors.white),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 9.0),
                  child: Text(
                    "Nunc at elementum massa, cursus consequat sapien. Donec et faucibus dolor, nec ultrices lectus. Duis eget lorem sit amet urna interdum facilisis.",
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}