import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/tasks_data.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemCount: tasksData.taskCount,
          itemBuilder: (context, index) {

            final task = tasksData.tasks[index];

            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (bool? checkBoxState) {
                  print(checkBoxState);
                  tasksData.updateTask(task);
                },
                longPressCallback: () {
                  tasksData.deleteTask(index);
                });
          },
        );
      },
    );
  }
}
