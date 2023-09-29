import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/widgets/task_list.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadedState) {
          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: state.tasks[index].isDone,
                taskTitle: state.tasks[index].name,
                checkboxChange: (newValue) {
                  BlocProvider.of<TodoBloc>(context)
                      .add(UpdateTaskEvent(task: state.tasks[index]));
                },
                listTileDelete: () {
                  BlocProvider.of<TodoBloc>(context)
                      .add(RemoveTaskEvent(task: state.tasks[index]));
                },
              );
            },
          );
        } else {
          return Text('data');
        }
      },
    );
  }
}
