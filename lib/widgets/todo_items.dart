import 'package:crud/Constants/cloros.dart';
import 'package:crud/model/todo.dart';
import 'package:flutter/material.dart';

class TodoItems extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeleteItem;
  const TodoItems(
      {super.key,
      required this.todo,
      required this.onTodoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('clicked on todo item');
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        tileColor: Colors.white,
        leading: Icon(
          todo.isdone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          // margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
              onPressed: () {
                // print('clicked on delete icon');
                onDeleteItem(todo.id);
              },
              iconSize: 18,
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
