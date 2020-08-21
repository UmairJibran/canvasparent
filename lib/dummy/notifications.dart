import 'package:canvasparent/model/notification.dart';

List<Notification> notifications = [
  new Notification(
    title: "Assignment Grade Above 60",
    description:
        "Assignment Graded: 99 on Test Assignment Free form rubric No Points in c1",
    date: "Jun 25 at 3:16 pm",
    type: Type.information,
  ),
  new Notification(
    title: "Assignment Grade Below 40",
    description: "Assignment Graded: 39.99% on essay # 1",
    date: "Jun 25 at 3:16 pm",
    type: Type.warning,
  ),
  new Notification(
    title: "Assignment Missing",
    description: "Trees and Plants and Stuff",
    date: "Jun 25 at 3:16 pm",
    type: Type.warning,
  ),
  new Notification(
    title: "Assignment Grade Above 60",
    description: "Assignment Graded: 98.5 in WOOD",
    date: "Jun 25 at 3:16 pm",
    type: Type.information,
  ),
  new Notification(
    title: "Assignment Grade Below 40",
    description: "Assignment Graded: 28.5 in painting with Bob Ross",
    date: "Jun 25 at 3:16 pm",
    type: Type.warning,
  ),
];
