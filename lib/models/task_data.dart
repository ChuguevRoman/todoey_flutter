import 'package:flutter/foundation.dart';

import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'By milk'),
    Task(name: 'By sugar'),
    Task(name: 'By coffee'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}