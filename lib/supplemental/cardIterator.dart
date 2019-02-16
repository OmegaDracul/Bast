import 'package:flutter/material.dart';

import '../homeIconPages/appointments.dart';
import '../homeIconPages/calendar.dart';
import '../homeIconPages/contactInfo.dart';
import '../homeIconPages/faq.dart';
import '../homeIconPages/hospitalInfo.dart';
import '../homeIconPages/medRecords.dart';
import '../homeIconPages/sos.dart';
import '../midwifeHomePages/drivers.dart';
import '../midwifeHomePages/emergencies.dart';
import '../midwifeHomePages/faq.dart';
import '../midwifeHomePages/notifications.dart';
import '../midwifeHomePages/patients.dart';
import '../midwifeHomePages/preferences.dart';
// Midwife Routes

List<Map<String, dynamic>> midwifeMenus = [
  {
    'icon': 'assets/icons/midwife/12.png',
    'title': 'Notifications',
    'url': Notifications(),
    'color': Colors.orange[300]
  },
  {
    'icon': 'assets/icons/midwife/2.png',
    'title': 'Patients',
    'url': Patients(),
    'color': Colors.purple[300]
  },
  {
    'icon': 'assets/icons/midwife/14.png',
    'title': 'Emergencies',
    'url': Emergencies(),
    'color': Colors.orangeAccent
  },
  {
    'icon': 'assets/icons/midwife/13.png',
    'title': 'Drivers',
    'url': Drivers(),
    'color': Colors.redAccent
  },
  {
    'icon': 'assets/icons/midwife/17.png',
    'title': 'FAQ',
    'url': MidwifeFAQ(),
    'color': Colors.purple
  },
  {
    'icon': 'assets/icons/midwife/18.png',
    'title': 'Preferences',
    'url': MyPreferences(),
    'color': Colors.orangeAccent
  }
];

List<Map<String, dynamic>> menus = [
  {
    'icon': 'assets/icons/homeIcons/cal.png',
    'title': 'My Calendar',
    'url': MyCalendar(),
    'color': Colors.red
  },
  {
    'icon': 'assets/icons/homeIcons/bed.png',
    'title': 'My Appointments',
    'url': MyAppointments(),
    'color': Colors.orangeAccent
  },
  {
    'icon': 'assets/icons/homeIcons/med-rec.png',
    'title': 'My Medical Records',
    'url': MyMedRecords(),
    'color': Colors.blueAccent
  },
  {
    'icon': 'assets/icons/homeIcons/hospital-rec.png',
    'title': 'Hospital Info',
    'url': MyHospitalInfo(),
    'color': Colors.purple
  },
  {
    'icon': 'assets/icons/homeIcons/contact.png',
    'title': 'Contact Info',
    'url': MyContactInfo(),
    'color': Colors.blue
  },
  {
    'icon': 'assets/icons/homeIcons/sos.png',
    'title': 'SOS',
    'url': MySOS(),
    'color': Colors.red
  },
  {
    'icon': 'assets/icons/homeIcons/faq.png',
    'title': 'FAQ',
    'url': MyFAQ(),
    'color': Colors.purple
  },
  {
    'icon': 'assets/icons/homeIcons/pref.png',
    'title': 'Preferences',
    'url': MyPreferences(),
    'color': Colors.orange
  },
];

class MenuItem {
  final String icon;
  final String title;
  final Widget url;
  final Color color;

  MenuItem(this.icon, this.title, this.url, this.color);
}

class GridBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> createGrid(List arr) {
      List<MenuItem> menus = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var item = MenuItem(
            arr[i]['icon'], arr[i]['title'], arr[i]['url'], arr[i]['color']);
        menus.add(item);
      }

//      print(menus);
      for (var i = 0; i < menus.length; i++) {
        var widget = Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => menus[i].url),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(0),
                  elevation: 0.0,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                  child: Container(
                    width: 160,
                    height: 115,
                    // color: Color(0xFFEEEEFF),
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              menus[i].icon,
                              height: 50,
                              width: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              menus[i].title,
                              style: TextStyle(color: menus[i].color),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Text(menus[i].title, textAlign: TextAlign.center)
          ],
        );

        widgets.add(widget);
      }
      return widgets;
    }

    return Padding(
      padding: EdgeInsetsDirectional.only(top: 65),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 6.0,
        childAspectRatio: 14 / 11,
        children: createGrid(menus),
      ),
    );
  }
}

class MidwifeGridBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> createGrid(List arr) {
      List<MenuItem> menus = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var item = MenuItem(
            arr[i]['icon'], arr[i]['title'], arr[i]['url'], arr[i]['color']);
        menus.add(item);
      }

//      print(menus);
      for (var i = 0; i < menus.length; i++) {
        var widget = Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => menus[i].url),
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(0),
                  elevation: 0.0,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      )),
                  child: Container(
                    width: 160,
                    height: 115,
                    // color: Color(0xFFEEEEFF),
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              menus[i].icon,
                              height: 50,
                              width: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              menus[i].title,
                              style: TextStyle(color: menus[i].color),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Text(menus[i].title, textAlign: TextAlign.center)
          ],
        );

        widgets.add(widget);
      }
      return widgets;
    }

    return Padding(
      padding: EdgeInsetsDirectional.only(top: 40),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 6.0,
        childAspectRatio: 14 / 11,
        children: createGrid(midwifeMenus),
      ),
    );
  }
}

/*
class CardList {
  final Color color;

  const CardList(this.color);

}

class CardRepo {
  static final CardRepo _singleton = CardRepo._internal();

    factory CardRepo() {
        return _singleton;
    }

    CardRepo._internal();
List<CardList> _cardList;

void init() {
    List<CardList> _cardList;
    _cardList..add(CardList(Colors.blue))
    ..add(CardList(Colors.white))
    ..add(CardList(Colors.red))
    ..add(CardList(Colors.pink))
    ..add(CardList(Colors.yellow));
  }

  List<CardList> getCards() {
    return _cardList;
  }
}


class IconCard extends StatefulWidget {
  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  List<CardList> _cardList;

  @override
  void initState() {
    super.initState();
    _cardList = CardRepo().getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Column(
        children: _cardList.map((list) => _iconCard(list)).toList(),
      ),
    );
  }

  Widget _iconCard(CardList list) {
    return Card(
      color: Colors.grey,
    );
  }
}
 */
