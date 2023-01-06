class Task {
  Task({required this.name, this.isDone = false});
  final String name;
  late bool isDone;

  void toggleDone() {
    isDone =!isDone;
  }
}
