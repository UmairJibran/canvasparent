import 'package:canvasparent/screens/darkpage.dart';
import 'package:canvasparent/screens/detailpage.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/notificationspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (ctx) => Home(),
        DetailPage.route: (ctx) => DetailPage(),
        NotificationsPage.route: (ctx) => NotificationsPage(),
        DarkPage.route: (ctx) => DarkPage(),
      },
    );
  }
}
