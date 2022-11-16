import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/model/task.dart';
import 'package:todolist_app/model/task_data.dart';
import 'package:todolist_app/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
