import 'package:canvasparent/screens/detailpage.dart';
import 'package:flutter/material.dart';

import 'notificationspage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DetailPage())),
              child: Text("Screen 2"),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => NotificationsPage())),
              child: Text("Screen 4"),
            ),
          ],
        ),
      ),
    );
  }
}
