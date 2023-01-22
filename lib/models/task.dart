class Task {
  int id;
  String title;
  String note;
  int isCompleted;
  String date;
  String startTime;
  String endTime;
  int color;
  int remind;
  String repeat;

  Task({
    required this.id,
    required this.title,
    required this.note,
    required this.isCompleted,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.color,
    required this.remind,
    required this.repeat,
  });

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "note": note,
        "isCompleted": isCompleted,
        "date": date,
        "startTime": startTime,
        "endTime": endTime,
        "color": color,
        "remind": remind,
        "repeat": repeat,
      };

  factory Task.fromMap(Map<String, dynamic> map) => Task(
      id: map['id'],
      title: map['title'],
      note: map['note'],
      isCompleted: map['isCompleted'],
      date: map['date'],
      startTime: map['startTime'],
      endTime: map['endTime'],
      color: map['color'],
      remind: map['remind'],
      repeat: map['repeat']);
}
