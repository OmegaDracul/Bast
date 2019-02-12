import 'package:flutter/material.dart';

class MyCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF5a26b5),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              indicatorWeight: 2.3,
              tabs: [
                Tab(
                  text: "PREGNANCY",
                ),
                Tab(
                  text: "NUTRITION",
                ),
              ],
            ),
            title: Text(
              "My Calendar",
              style: TextStyle(fontFamily: "Comfortaa"),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                      child: Container(
                        child: Text(
                          "Pregnancy Stage: 4th Month",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Divider(
                        height: 20,
                        indent: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Container(
                                child: Image.asset(
                                  "assets/icons/calendar/prego.png",
                                  scale: 3.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                              child: Container(
                                width: 150,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacus lorem, blandit in ultrices eu, varius sed lorem. Vivamus quis eros eros. Integer iaculis lobortis turpis vitae scelerisque.",
                                  style: TextStyle(color: Colors.purple),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                            child: Container(
                              child: Text(
                                "1st Trimester: Pregnancy Meal Plan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 30, 10),
                            child: Divider(
                              height: 20,
                              indent: 6,
                              color: Colors.grey,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Fruits",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Nullam pretium purus eu mauris imperdiet lobortis. Phasellus rhoncus, diam ut pharetra fermentum, massa massa finibus felis, ut aliquet arcu nunc quis justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec ut magna ac lorem mattis sodales. Cras iaculis posuere sodales. Mauris nec justo eget magna venenatis congue. Aenean sit amet pellentesque odio. Nullam maximus ultricies laoreet. Vestibulum sagittis mauris",
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Vegetables",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Nam velit sem, viverra id blandit at, tempus et enim. In et facilisis lacus. Nunc eu lorem tellus. Ut at laoreet enim. Maecenas molestie lectus erat, eget posuere lacus lobortis vestibulum. Aliquam sed sem non massa suscipit scelerisque at dictum lorem. Morbi euismod sem a viverra sagittis. Fusce vestibulum feugiat metus id tristique. Donec vestibulum hendrerit sapien ut tristique. Nulla suscipit est eu fermentum laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;",
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class MyCalendar extends StatefulWidget {
//   @override
//   _MyCalendarState createState() => _MyCalendarState();
// }

// class _MyCalendarState extends State<MyCalendar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF2c1a4c),
//         title: Row(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 85),
//               child: Text(
//                 "BAST",
//                 style: TextStyle(fontFamily: "Comfortaa"),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 102),
//               child: ClipOval(
//                 child: Image.asset(
//                   "assets/icons/homeIcons/logo.png",
//                   fit: BoxFit.contain,
//                   height: 30,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Calendar(),
//     );
//   }
// }

// class Calendar extends StatefulWidget {
//   @override
//   _CalendarState createState() => _CalendarState();
// }

// class _CalendarState extends State<Calendar>
// /* with SingleTickerProviderStateMixin */ {
//   /* final List<Tab> myTabs = <Tab>[
//     Tab(text: 'LEFT'),
//     Tab(text: 'RIGHT'),
//   ];

//   TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, length: myTabs.length);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//  */
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           /* Container(
//             height: MediaQuery.of(context).size.height * 0.19,
//             color: Theme.of(context).primaryColor,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
//                       child: Text(
//                         'Ava Edward',
//                         style: TextStyle(
//                             fontFamily: 'MontserratAlternate',
//                             color: Colors.white,
//                             fontSize: 29),
//                       ),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.fromLTRB(
//                             MediaQuery.of(context).size.width * 0.25, 15, 0, 0),
//                         child: Image.asset(
//                           'assets/icons/calendar/cal.png',
//                           scale: 10,
//                         ))
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
//                   child: Text(
//                     'MF/31/014/YLA',
//                     style: TextStyle(color: Colors.white, fontSize: 13.5),
//                   ),
//                 )
//               ],
//             ),
//           ), */
//           DefaultTabController(
//             length: 2,
//             child: Material(
//               color: Theme.of(context).primaryColor,
//               child: TabBar(
//                 //controller: _tabController,
//                 indicatorColor: Color(0xFFbababa),
//                 indicatorWeight: 3,
//                 indicatorSize: TabBarIndicatorSize.label,
//                 tabs: [
//                   Tab(
//                     child: Text(
//                       "PREGNANCY",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       "NUTRITION",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           /* TabBarView(
//             controller: _tabController,
//             children: <Widget>[
//               Text("Youve Selected the First"),
//               Text("Youve Selected the Second"),
//             ],
//           ) */
//         ],
//       ),
//     );
//   }
// }
