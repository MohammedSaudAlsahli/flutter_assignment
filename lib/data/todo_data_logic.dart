import 'package:flutter/material.dart';
import 'package:flutter_assignment/custom_widgets/custom_todo_card.dart';
import 'package:flutter_assignment/data/todo_data.dart';
import 'package:flutter_assignment/data/todo_data_model.dart';

class TodoCardData extends StatefulWidget {
  const TodoCardData({super.key});

  @override
  State<TodoCardData> createState() => _TodoCardDataState();
}

class _TodoCardDataState extends State<TodoCardData> {
  List<TodoModel>? listOfTodo = [];

  @override
  void initState() {
    super.initState();

    for (var todo in todoData) {
      listOfTodo?.add(TodoModel.fromJson(todo));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfTodo!.length,
      itemBuilder: (context, index) {
        final todo = listOfTodo![index];
        return CustomTodoCard(
          customText: todo.todoMessage,
          userID: todo.userID.toString(),
          isCompleted: todo.isCompleted,
          onTab: () {
            setState(() {
              todo.isCompleted = !todo.isCompleted;
            });
          },
        );
      },
    );
  }
}
