import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/model/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen())));
          },
          child: Center(
              child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          )),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Colors.lightBlueAccent,
              ),
              Positioned(
                top: 65,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Center(
                          child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.lightBlueAccent,
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Todoey",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    Text(
                      "${Provider.of<TaskData>(context).taskCount} Tasks",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: size.width * 1,
                  height: size.height * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: TasksList(),
                ),
              )
            ],
          ),
        ));
  }
}
