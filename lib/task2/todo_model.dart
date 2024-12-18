class TodoModel {
  final String title;
  final bool completed;

  TodoModel(this.title, this.completed);

  @override
  String toString() {
    return 'Task($title, $completed)';
  }
}
