import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
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
            const SizedBox(height: 5.0),
            GestureDetector(
                onTap: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle: newTaskTitle!);
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.lightBlueAccent,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Add',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
