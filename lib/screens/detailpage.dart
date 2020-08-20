import 'package:canvasparent/dummy/tabs.dart';
import 'package:canvasparent/widgets/tab_screens/grades.dart';
import 'package:canvasparent/widgets/tab_screens/summary.dart';
import 'package:canvasparent/widgets/tab_screens/syllabus.dart';
import 'package:flutter/material.dart';
import '../model/tab.dart' as custom;

class DetailPage extends StatelessWidget {
  static const String route = "/detailPage";

  final List<Widget> tabScreens = [
    Grades(),
    Syllabus(),
    Summary(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text('Introduction to Planets'),
            bottom: TabBar(
              tabs: tabs.map((custom.Tab tab) {
                return Tab(
                  text: tab.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: tabScreens,
          ),
        ),
      ),
    );
  }
}
