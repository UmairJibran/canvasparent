import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AssignmentTile extends StatelessWidget {
  final String assignmentName;
  final DateTime dueDate;
  final bool isLate;
  final Color color;
  final bool submitted;

  const AssignmentTile(
    this.assignmentName, {
    this.isLate,
    this.submitted,
    this.color,
    this.dueDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Text(assignmentName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMd().format(dueDate),
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              submitted ? isLate ? "Late" : "" : "Not Submitted",
              style: TextStyle(
                color: submitted ? Colors.deepOrange : Colors.grey,
              ),
            ),
          ],
        ),
        leading: Icon(
          Icons.assignment,
          color: color,
        ),
      ),
    );
  }
}
