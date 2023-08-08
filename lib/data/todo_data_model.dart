class TodoModel {
  int id;
  String todoMessage;
  bool isCompleted;
  int userID;

  TodoModel(
      {required this.id,
      required this.todoMessage,
      required this.isCompleted,
      required this.userID});

  factory TodoModel.fromJson(Map json) {
    return TodoModel(
        id: json['id'],
        todoMessage: json['todo'],
        isCompleted: json['completed'],
        userID: json['userId']);
  }
}
