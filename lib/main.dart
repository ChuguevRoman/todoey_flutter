import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/task_screen.dart';
import './models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey',
        home: TaskScreen(),
      ),
    );
  }
}
