class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}

/*List<Task> tasks = [
  Task(name: 'go shopping'),
  Task(name: 'buy a gift'),
  Task(name: 'repair the car'),
];*/
