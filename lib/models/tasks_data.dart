import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  String get taskPlural{
    return _tasks.length <= 1? "Task" : "Tasks";
  }

  void addTask({required String newTaskTitle}) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();

  }void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
