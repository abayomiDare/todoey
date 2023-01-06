import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback});
  late bool isChecked;
  late String taskTitle;
  Function(bool?) checkBoxCallback;



  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        )
        // TaskCheckBox(checkBoxState: isChecked, onChange: checkBoxCallback),
        );
  }
}


