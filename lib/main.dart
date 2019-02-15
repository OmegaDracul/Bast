import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
        (_) {
      runApp(
        MyApp(),
      );
    },
  );
}
