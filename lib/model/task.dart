import 'package:flutter/material.dart';


class Task {
  Task(this.name,);
   String name;
  bool isDone = false;

  void toggleDone() {
    isDone = !isDone;
  }
}
