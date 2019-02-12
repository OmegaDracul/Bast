import 'package:flutter/material.dart';
//import 'dart:math' as math;

class MyAppointments extends StatefulWidget {
  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Appointments",
            style: TextStyle(fontFamily: "Comfortaa"),
          ),
        ),
        body: Appointments(),
      ),
    );
  }
}

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ExpansionTile(
            backgroundColor: Colors.deepPurple[700],
            initiallyExpanded: true,
            headerBackgroundColor: Colors.deepPurple[900],
            leading: Container(
              child: Text(
                "18 Jun",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            title: Text(
              "Discussion of your food type",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.today, color: Colors.white),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Brief",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9.0),
                        child: Text(
                          "Based on your medical history, I would like to see you by 10:00 AM at the hospital and suggest the foods and medication you should commence for your baby",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Meeting Location",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Ward A, Room 12",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Participants",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Chloe Simons & I",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Container(
              child: Text(
                "09 Jul",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            title: Text(
              "Collection of supplements",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            headerBackgroundColor: Colors.blue,
            backgroundColor: Colors.blue[400],
            trailing: Icon(
              Icons.today,
              color: Colors.white,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Brief",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9.0),
                        child: Text(
                          "We will have supplements ready for you. These supplements will help you maintain the nessessary nutrients required for the child to develop properly.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Meeting Location",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Pharmacy B",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Participants",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Janet Foster",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            headerBackgroundColor: Colors.grey[600],
            backgroundColor: Colors.grey,
            leading: Container(
              child: Text(
                "23 Jul",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            title: Text(
              "Exercise Routine",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.today,
              color: Colors.white,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Brief",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9.0),
                        child: Text(
                          "We would like to meet with you so we can instruct you on proper exercising techniques in preparation for the baby",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Meeting Location",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Ward F, Room 10",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Participants",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "James Michaelson",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  softWrap: true,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            headerBackgroundColor: Colors.pink[300],
            backgroundColor: Colors.pink[200],
            leading: Container(
              child: Text(
                "20 Aug",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            title: Text(
              "Discussion of food hygiene",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.today,
              color: Colors.white,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Brief",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9.0),
                        child: Text(
                          "Based on your medical history, I would like to see you by 10:00 AM at the hospital and suggest the foods and medication you should commence for your baby",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Meeting Location",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                                ),
                                Text("Ward C, Room 1", style: TextStyle(color: Colors.white,),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Participants",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                                ),
                                Text("Amaka Onyirioha & I", style: TextStyle(color: Colors.white,),)
                              ],
                            )
                          ],
                        ),
                      )
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

/* class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Discussion of food type',
    <Entry>[
      Entry('Brief'),
      Entry('Based on your medical history, I would like to see you by 10:00 AM at the hospital and suggest the foods and medications you should commence for you and your')
    ],
  ),
];

class EntryItem extends StatefulWidget {
  const EntryItem(this.entry);

  final Entry entry;

  @override
  EntryItemState createState() {
    return EntryItemState();
  }
}

class EntryItemState extends State<EntryItem> {
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      initiallyExpanded: true,
      leading: Container(
        child: Text("18 Jun", softWrap: true),
      ),
      //backgroundColor: Colors.deepPurple,
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      trailing: Icon(Icons.calendar_today),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(widget.entry);
  }
} */

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate({
//     @required this.minHeight,
//     @required this.maxHeight,
//     @required this.child,
//   });
//   final double minHeight;
//   final double maxHeight;
//   final Widget child;
//   @override
//   double get minExtent => minHeight;
//   @override
//   double get maxExtent => math.max(maxHeight, minHeight);
//   @override
//   Widget build(
//       BuildContext context,
//       double shrinkOffset,
//       bool overlapsContent)
//   {
//     return new SizedBox.expand(child: child);
//   }
//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return maxHeight != oldDelegate.maxHeight ||
//         minHeight != oldDelegate.minHeight ||
//         child != oldDelegate.child;
//   }
// }
// class CollapsingList extends StatelessWidget {
//   SliverPersistentHeader makeHeader(String headerText) {
//     return SliverPersistentHeader(
//       pinned: true,
//       delegate: _SliverAppBarDelegate(
//         minHeight: 60.0,
//         maxHeight: 200.0,
//         child: Container(
//             color: Colors.lightBlue, child: Center(child:
//                 Text(headerText))),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         makeHeader('Header Section 1'),
//         SliverGrid.count(
//           crossAxisCount: 3,
//           children: [
//             Container(color: Colors.red, height: 150.0),
//             Container(color: Colors.purple, height: 150.0),
//             Container(color: Colors.green, height: 150.0),
//             Container(color: Colors.orange, height: 150.0),
//             Container(color: Colors.yellow, height: 150.0),
//             Container(color: Colors.pink, height: 150.0),
//             Container(color: Colors.cyan, height: 150.0),
//             Container(color: Colors.indigo, height: 150.0),
//             Container(color: Colors.blue, height: 150.0),
//           ],
//         ),
//         makeHeader('Header Section 2'),
//         SliverFixedExtentList(
//           itemExtent: 150.0,
//           delegate: SliverChildListDelegate(
//             [
//               Container(color: Colors.red),
//               Container(color: Colors.purple),
//               Container(color: Colors.green),
//               Container(color: Colors.orange),
//               Container(color: Colors.yellow),
//             ],
//           ),
//         ),
//         makeHeader('Header Section 3'),
//         SliverGrid(
//           gridDelegate:
//               new SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200.0,
//             mainAxisSpacing: 10.0,
//             crossAxisSpacing: 10.0,
//             childAspectRatio: 4.0,
//           ),
//           delegate: new SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//               return new Container(
//                 alignment: Alignment.center,
//                 color: Colors.teal[100 * (index % 9)],
//                 child: new Text('grid item $index'),
//               );
//             },
//             childCount: 20,
//           ),
//         ),
//         makeHeader('Header Section 4'),
//         // Yes, this could also be a SliverFixedExtentList. Writing
//         // this way just for an example of SliverList construction.
//         SliverList(
//           delegate: SliverChildListDelegate(
//             [
//               Container(color: Colors.pink, height: 150.0),
//               Container(color: Colors.cyan, height: 150.0),
//               Container(color: Colors.indigo, height: 150.0),
//               Container(color: Colors.blue, height: 150.0),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
