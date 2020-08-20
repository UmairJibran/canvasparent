import 'package:canvasparent/dummy/assignments.dart';
import 'package:flutter/material.dart';

import '../assignment_tile.dart';

class Grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grading Period",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Total Grade",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "94.6%",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Assignments",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: assignments.length,
              itemBuilder: (_, index) {
                return AssignmentTile(
                  assignments[index]["assignmentTitle"],
                  dueDate: assignments[index]["due"],
                  color: assignments[index]["color"],
                  isLate: assignments[index]["late"],
                  submitted: assignments[index]["submitted"],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "No Due Today",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: assignments.length,
              itemBuilder: (_, index) {
                return AssignmentTile(
                  assignments[index]["assignmentTitle"],
                  dueDate: assignments[index]["due"],
                  isLate: assignments[index]["late"],
                  submitted: assignments[index]["submitted"],
                  color: assignments[index]["color"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
