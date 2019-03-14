import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

/* import 'dart:convert';

Post postFromJson(String str) {
    final jsonData = json.decode(str);
    return Post.fromJson(jsonData);
}

String postToJson(Post data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Post {
    Name name;
    String dob;
    String age;

    Post({
        this.name,
        this.dob,
        this.age,
    });

    factory Post.fromJson(Map<String, dynamic> json) => new Post(
        name: Name.fromJson(json["name"]),
        dob: json["dob"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "dob": dob,
        "age": age,
    };
}

class Name {
    String fname;
    String mname;
    String lname;

    Name({
        this.fname,
        this.mname,
        this.lname,
    });

    factory Name.fromJson(Map<String, dynamic> json) => new Name(
        fname: json["fname"],
        mname: json["mname"],
        lname: json["lname"],
    );

    Map<String, dynamic> toJson() => {
        "fname": fname,
        "mname": mname,
        "lname": lname,
    };
}

Future<Post> fetchPost() async {
  final response =
      await http.get('http://bast.org.ng/web_app/api/patients/1105198/1/personal_info');

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

 */

class MyFAQ extends StatefulWidget {
  @override
  _MyFAQState createState() => _MyFAQState();
}

class _MyFAQState extends State<MyFAQ> {
  //Future<Post> post;

  /* @override
  void initState() {
    super.initState();
    post = fetchPost();
  } */

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My FAQ",
            style: TextStyle(fontFamily: "Comfortaa"),
          ),
        ),
        body: FAQ()/* Center(
          child: FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.age, style: TextStyle(fontSize: 30),);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ), */
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
          ),
          ExpansionTile(
            title: Text(
              "Nam consequat id ante sodales luctus",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            headerBackgroundColor: Colors.red[400],
            backgroundColor: Colors.red[300],
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
            headerBackgroundColor: Colors.teal,
            backgroundColor: Colors.teal[400],
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
