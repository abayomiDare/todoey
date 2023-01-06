import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({required this.addTaskCallback});
  final Function(String) addTaskCallback;
  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            GestureDetector(
                onTap: () {
                  addTaskCallback(newTaskTitle!);
                },
                child: const SizedBox(
                  child: Text(
                    'Add',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
