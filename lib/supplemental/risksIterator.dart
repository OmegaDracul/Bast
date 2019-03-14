import 'package:flutter/material.dart';
import 'package:bast/customWidgets/expansionTile.dart';

List<Map<String, dynamic>> risksArr = [
  {
    'title': 'Pre Eclampsia',
    'details': 'Preeclampsia is a condition that occurs only during pregnancy. Some symptoms of preeclampsia may include high blood pressure and protein in the urine, occurring after week 20 of pregnancy. Preeclampsia is often precluded by gestational hypertension.',
    'severe' : true
  },
];

class Risk {
  final String title;
  final String details;
  final bool severe;

  Risk(this.title, this.details, this.severe);
}

class RisksBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> createRisk(List arr) {
      List<Risk> risks = [];
      List<Widget> widgets = [];

      for (var i = 0; i < arr.length; i++) {
        var risk = Risk(arr[i]['title'], arr[i]['details'], arr[i]['severe']);
        risks.add(risk);
      }
      //print(drivers);

      for (var i = 0; i < risks.length; i++) {
        var widget = ExpansionCustomTile(
          headerBackgroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          initiallyExpanded: false,          
          title: Text(
            risks[i].title,
            style: TextStyle(color: Colors.black),
          ),
          trailing: risks[i].severe ? 
              Icon(Icons.warning, color: Colors.red) : 
              Icon(Icons.warning, color: Colors.yellow)
          ,
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
                        risks[i].details,
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
        widgets.add(widget);
      }
      return widgets;
    }

    return ListView(
      children: createRisk(risksArr),
    );
  }
}
