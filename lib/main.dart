import 'package:flutter/material.dart';
import 'package:flutter_assignment/custom_widgets/custom_app_bar.dart';
import 'package:flutter_assignment/todo_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: const TodoScreen(),
      ),
    );
  }
}
