import 'package:flutter/material.dart';

class MidwifeFAQ extends StatefulWidget {
  @override
  _MidwifeFAQState createState() => _MidwifeFAQState();
}

class _MidwifeFAQState extends State<MidwifeFAQ> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FAQ",
            style: TextStyle(fontFamily: "Comfortaa"),
          ),
        ),
        body: FAQ(),
      ),
    );
  }
}

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ExpansionTile(
            headerBackgroundColor: Colors.red[900],
            backgroundColor: Colors.red[800],
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
          ),
          ExpansionTile(
            title: Text(
              "Nam consequat id ante sodales luctus",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            headerBackgroundColor: Colors.lightBlue[900],
            backgroundColor: Colors.lightBlue[800],
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
                          "Sed vulputate lacus augue, nec varius lorem efficitur eget. Etiam aliquet metus vel nunc rutrum condimentum.",
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
          ),
          ExpansionTile(
            headerBackgroundColor: Colors.yellow[900],
            backgroundColor: Colors.yellow[800],
            title: Text(
              "Pellentesque vitae interdum urna, sit amet porta magna.",
              style: TextStyle(
                color: Colors.white,
              ),
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
                          "Sed consequat leo accumsan porttitor tincidunt. Vestibulum eu urna euismod velit vulputate convallis. Pellentesque vehicula a metus nec iaculis",
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
          ),
          ExpansionTile(
            headerBackgroundColor: Colors.pink[300],
            backgroundColor: Colors.pink[200],
            title: Text(
              "Phasellus ut dolor sagittis, semper mauris ac, laoreet ante",
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
                          "Aenean a lectus dolor. Phasellus fringilla, mi a posuere hendrerit, mauris ligula consectetur dui, vel pellentesque arcu urna at nisi.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
