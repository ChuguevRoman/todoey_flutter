import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './task_tile.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback: () => taskData.updateTask(
                  task,
                ),
              );
            });
      },
    );
  }
}
