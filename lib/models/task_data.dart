import 'dart:collection';
import 'package:flutter/foundation.dart';

import './task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'By milk'),
    Task(name: 'By sugar'),
    Task(name: 'By coffee'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;


  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
