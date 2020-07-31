import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 30.0),
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].title,
          isDone: tasks[index].isDone,
          checkboxCallback: (newValue) {
            setState(() {
              tasks[index].isDone = newValue;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
//    return ListView(
//      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 30.0),
//      children: <Widget>[
//        TaskTile(
//          task: 'Buy milk',
//        ),
//        TaskTile(
//          task: 'Buy eggs',
//        ),
//      ],
//    );
  }
}
