import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(title: 'Buy milk')];

  int get taskCount => tasks.length;

  void addTask(String newTask) {
    tasks.add(Task(title: newTask));
    notifyListeners();
  }
}
