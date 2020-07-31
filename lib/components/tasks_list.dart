import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onCheckboxChanged;

  TasksList({@required this.tasks, this.onCheckboxChanged});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 30.0),
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].title,
          isDone: tasks[index].isDone,
          onCheckboxChanged: (newValue) {
            onCheckboxChanged(index, newValue);
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
