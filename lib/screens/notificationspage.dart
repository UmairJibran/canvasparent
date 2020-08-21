import 'package:canvasparent/dummy/notifications.dart';
import 'package:flutter/material.dart';
import '../model/notification.dart';

class NotificationsPage extends StatelessWidget {
  static const route = "/notificationsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
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
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (_, index) {
            return ListTile(
              trailing: Icon(Icons.close),
              leading: Icon(
                notifications[index].type == Type.warning
                    ? Icons.warning
                    : Icons.info,
                color: notifications[index].type == Type.warning
                    ? Colors.red
                    : Colors.blue,
              ),
              title: Text(
                notifications[index].title,
                style: TextStyle(
                    color: notifications[index].type == Type.warning
                        ? Colors.red
                        : Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notifications[index].description,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(notifications[index].date),
                ],
              ),
              isThreeLine: true,
            );
          },
        ),
      ),
    );
  }
}
