import 'dart:math';

import 'package:flutter/material.dart';

class DarkPage extends StatelessWidget {
  static const String route = "/darkPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Derrick Patrick"),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "2019",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "August",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Day(name: "Sun", color: Colors.grey),
                  Day(name: "Mon", color: Colors.white),
                  Day(name: "Tue", color: Colors.white),
                  Day(name: "Wed", color: Colors.white),
                  Day(name: "Thu", color: Colors.white),
                  Day(name: "Fri", color: Colors.white),
                  Day(name: "Sat", color: Colors.grey),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.51,
                child: GridView.count(
                  crossAxisCount: 7,
                  children: List.generate(42, (index) {
                    int date = index + 1;
                    int dots = Random().nextInt(3);
                    bool outline = Random().nextBool();
                    if (date > 31) {
                      date = date % 31;
                    }
                    return Date(
                      date: date.toString(),
                      dots: dots,
                      fill: date == 23 ? true : false,
                      outline: outline,
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AST 101",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Essay: The Rocky Planets",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Due Apr 8 at 11:59pm",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "15 out of 20pts",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Date extends StatelessWidget {
  final String date;
  final Color color;
  final int dots;
  final bool outline;
  final bool fill;

  const Date({
    this.date,
    this.color = Colors.white,
    this.dots = 0,
    this.outline = false,
    this.fill = false,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: fill ? Colors.blue : Colors.black,
            border: Border.all(
              color: outline ? Colors.blue : Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              date,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: color,
              ),
            ),
          ),
        ),
        dots > 0
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(dots, (_) {
                  return Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 3,
                    ),
                  );
                }),
              )
            : SizedBox(),
      ],
    );
  }
}

class Day extends StatelessWidget {
  final String name;
  final Color color;

  const Day({this.name, this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
