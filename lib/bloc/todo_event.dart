part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class GetAllTasksEvent extends TodoEvent {}

class AddTaskEvent extends TodoEvent {
  final Task task;
  const AddTaskEvent({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class UpdateTaskEvent extends TodoEvent {
  final Task task;
  const UpdateTaskEvent({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class RemoveTaskEvent extends TodoEvent {
  final Task task;
  const RemoveTaskEvent({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}
