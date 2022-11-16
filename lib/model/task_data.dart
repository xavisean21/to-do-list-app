import 'package:flutter/material.dart';
import 'package:todolist_app/model/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task("Buy Milk"),
    Task("Buy Bread"),
    Task("Buy Fish"),
  ];

  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

   void addTask (String newTaskTitle) {
     final task = Task(newTaskTitle);
   _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task) {
     task.toggleDone();
     notifyListeners();
  }

  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}