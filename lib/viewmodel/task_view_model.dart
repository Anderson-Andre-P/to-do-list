import 'package:flutter/material.dart';
import 'package:todo/model/model_task.dart';

class TaskViewModel extends ChangeNotifier {
  List<TaskModel> tasks = [];

  TaskViewModel();

  void addTask(String taskName, String deadline) {
    tasks.add(TaskModel(name: taskName, deadline: deadline));
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void updateTask(int index, String newName, String newDeadline) {
    var taskToEdit = tasks[index];
    taskToEdit.name = newName;
    taskToEdit.deadline = newDeadline;
    tasks[index] = taskToEdit;
    notifyListeners();
  }
}
