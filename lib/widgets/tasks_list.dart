import 'package:flutter/material.dart';
import 'package:todolist_app/model/task_data.dart';
import 'package:todolist_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) =>
       ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
               taskData.updateTask(taskData.tasks[index]);
              }, longPressCallback: () {
                taskData.deleteTask(taskData.tasks[index]);
            },
            );
          }),
    );
  }
}
