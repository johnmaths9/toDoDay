import 'package:flutter/material.dart';

import '../../widgets/task_title.dart';
import '../add_task/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(),
                ),
              ),
            );
          },
          backgroundColor: Colors.indigo[400],
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.teal[400],
        body: Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'ToDayDo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TasksList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
