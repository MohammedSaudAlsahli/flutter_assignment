import 'package:flutter/material.dart';
import 'package:flutter_assignment/data/todo_data_logic.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: TodoCardData(),
    );
  }
}
