import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String task;

  TaskTile({@required this.task});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isDone,
        onChanged: (newValue) {
          setState(() {
            isDone = newValue;
          });
        },
      ),
    );
  }
}
