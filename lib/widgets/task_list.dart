import 'package:flutter/material.dart';

import './task_tile.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'By milk'),
    Task(name: 'By sugar'),
    Task(name: 'By coffee'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkboxCallback: () {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
