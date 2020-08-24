enum Type { information, warning }

class Notification {
  final String title;
  final String description;
  final String date;
  final Type type;

  Notification({
    this.title,
    this.description,
    this.date,
    this.type,
  });
}
