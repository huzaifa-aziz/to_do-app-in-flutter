class Todo {
  String? id;
  String? todoText;
  bool isdone;

  Todo({required this.id, required this.todoText, this.isdone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'morning exercise', isdone: true),
      Todo(id: '02', todoText: 'buy groceries'),
      Todo(id: '03', todoText: 'checking email'),
      Todo(id: '04', todoText: 'go for a job'),
      Todo(id: '05', todoText: 'playing cricket', isdone: true),
      Todo(id: '06', todoText: 'sleep'),
    ];
  }
}
