import 'package:flutter/material.dart';
import 'package:todo/view/task_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-do MVVM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TaskView(title: 'Facily To-Do List MVVM'),
    );
  }
}
