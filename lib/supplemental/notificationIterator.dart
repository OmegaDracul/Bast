import 'package:flutter/material.dart';

final now = DateTime.now();

List<Map<String, dynamic>> notificationArr = [
  {
    'notification': 'Nurse Salami has requested an EVD on your behalf',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request rejected',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request accepted',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request accepted',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request accepted',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request accepted',
    'time': '${now.hour} : ${now.minute}',
  },
  {
    'notification': 'SOS Request accepted',
    'time': '${now.hour} : ${now.minute}',
  }
  
];

class Notification {
  final String notification;
  final String time;
   
  
  Notification(this.notification, this.time);
}


class NotificationBuild extends StatefulWidget {
  @override
  _NotificationBuildState createState() => _NotificationBuildState();
}

class _NotificationBuildState extends State<NotificationBuild> {

  @override
  Widget build(BuildContext context) {
    List<Widget> createNotification(List arr) {
      List<Notification> notifications = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var notification = Notification(arr[i]['notification'], arr[i]['time']);
        notifications.add(notification);
      }
      //print(drivers);

      for (var i = 0; i < notifications.length; i++) {
        var widget = Container(
          child: ListTile(
            contentPadding: EdgeInsets.all(20),
            title: Text(notifications[i].notification),
            trailing: Text(notifications[i].time),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5)
            )
          ),
        );
        widgets.add(widget);
      }
      return widgets;
    }

    return ListView(
      children: createNotification(notificationArr)         
    );
  }
}