import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(title: 'Buy milk')];

  int get taskCount => _tasks.length;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String newTask) {
    _tasks.add(Task(title: newTask));
    notifyListeners();
  }
}
