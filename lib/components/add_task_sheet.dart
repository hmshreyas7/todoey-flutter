import 'package:flutter/material.dart';

class AddTaskSheet extends StatelessWidget {
  final Function onAddPressed;

  AddTaskSheet({this.onAddPressed});

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            onChanged: (value) {
              newTask = value;
            },
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 5.0,
                ),
              ),
            ),
            autofocus: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            padding: EdgeInsets.all(16.0),
            color: Colors.lightBlueAccent,
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              if (newTask != null) {
                onAddPressed(newTask);
              }
            },
          ),
        ],
      ),
    );
  }
}
