import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback,
      this.longPressCallback});

  late bool isChecked;
  late String taskTitle;
  Function(bool?) checkBoxCallback;
  Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallback,
          activeColor: Colors.lightBlueAccent,
        ));
  }
}
