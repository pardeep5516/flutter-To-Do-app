import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'App'),
    Task(name: 'Game'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTextTitle) {
    final task = Task(name: newTextTitle);
    _task.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
