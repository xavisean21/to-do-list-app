import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              TextField(
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                child: Center(
                    child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
