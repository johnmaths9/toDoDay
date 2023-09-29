import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/models/task.dart';

import '../../bloc/todo_bloc.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigo[400],
                    fontWeight: FontWeight.bold,
                  )),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  BlocProvider.of<TodoBloc>(context)
                      .add(AddTaskEvent(task: Task(name: newTaskTitle!)));
                  Navigator.pop(context);
                },
                child: Text('Add'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  primary: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
