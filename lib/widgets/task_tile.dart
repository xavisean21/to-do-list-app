import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});
   bool isChecked;
   final String taskTitle;
   final Function(bool?)  checkboxCallback;
   final Function() longPressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing:Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
      ),
    );
  }
}

