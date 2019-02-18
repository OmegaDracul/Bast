import 'package:flutter/material.dart';

class MyPreferences extends StatefulWidget {
  @override
  _MyPreferencesState createState() => _MyPreferencesState();
}

class _MyPreferencesState extends State<MyPreferences> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Preferences",
            style: TextStyle(fontFamily: "Comfortaa"),
          ),
        ),
        body: Preferences(),
      ),
    );
  }
}

class Preferences extends StatefulWidget {
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  bool _pushNotifications = false;
  bool _dailyReminders = false;

  void _pushNotificationsChange(bool value) =>
      setState(() => _pushNotifications = value);
  void _dailyRemindersChange(bool value) =>
      setState(() => _dailyReminders = value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SwitchListTile.adaptive(
            value: _pushNotifications,
            onChanged: _pushNotificationsChange,
            title: Text("Push Notifications"),
          ),
          Divider(),
          SwitchListTile.adaptive(
            value: _dailyReminders,
            onChanged: _dailyRemindersChange,
            title: Text("Daily Reminders"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
