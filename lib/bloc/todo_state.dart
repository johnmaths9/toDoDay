part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoInitial extends TodoState {}

class LoadingState extends TodoState {}

class LoadedState extends TodoState {
  final List<Task> tasks;

  const LoadedState({this.tasks = const []});

  @override
  List<Object> get props => [tasks];
}

class ErrorState extends TodoState {
  final String message;

  const ErrorState(this.message);

  @override
  List<Object> get props => [message];
}
