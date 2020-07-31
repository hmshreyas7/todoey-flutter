import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  final Function onCheckboxChanged;

  TasksList({this.onCheckboxChanged});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, widget) {
      return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 30.0),
        itemBuilder: (context, index) {
          return TaskTile(
            title: taskData.tasks[index].title,
            isDone: taskData.tasks[index].isDone,
            onCheckboxChanged: (newValue) {
              onCheckboxChanged(index, newValue);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
