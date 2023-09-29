import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<GetAllTasksEvent>((event, emit) {
      emit(LoadedState());
    });
    on<AddTaskEvent>((event, emit) {
      print(event.task.name);
      emit(LoadedState(
          tasks: List.from((state as LoadedState).tasks)..add(event.task)));
    });
    on<UpdateTaskEvent>((event, emit) {
      emit(LoadedState(
          tasks: List.from((state as LoadedState).tasks)
            ..forEach((element) {
              if (event.task.name == element.name) {
                element.doneChange();
              }
            })));
    });
    on<RemoveTaskEvent>((event, emit) {
      print(event.task.name);
      emit(LoadedState(
          tasks: List.from((state as LoadedState).tasks)..remove(event.task)));
    });
  }
}
