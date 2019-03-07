import 'package:flutter/material.dart';
import 'package:contact_picker/contact_picker.dart';

class MyContactInfo extends StatefulWidget {
  @override
  _MyContactInfoState createState() => _MyContactInfoState();
}

class _MyContactInfoState extends State<MyContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contact Info",
          style: TextStyle(fontFamily: "Comfortaa"),
        ),
      ),
      body: ContactInfo(),
    );
  }
}

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  final ContactPicker _contactPicker = ContactPicker();
  Contact _contact;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _contact == null
                      ? 'No Emergency Contact Selected.'
                      : _contact.toString(),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            Container(
              //width: 20,
              child: MaterialButton(
                color: Colors.deepPurple[700],
                child: Text(
                  "Change Emergency Contact",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  Contact contact = await _contactPicker.selectContact();
                  setState(
                    () {
                      _contact = contact;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
