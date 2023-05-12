// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'controller/todo_controller.dart';
// import 'model/todo.dart';
//
// class TodoListView extends StatelessWidget {
//   final TodoController todoController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todo List'),
//       ),
//       body: Obx(
//         () => ListView.builder(
//           itemCount: todoController.todos.length,
//           itemBuilder: (context, index) {
//             final Todo todo = todoController.todos[index];
//             return ListTile(
//               title: Text(todo.title),
//               trailing: Checkbox(
//                 value: todo.completed,
//                 onChanged: (value) {
//                   todoController.addOrUpdateTodo(
//                     todo.copyWith(completed: value ?? false),
//                   );
//                 },
//               ),
//               onLongPress: () {
//                 todoController.deleteTodoById(todo.id);
//               },
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           _showAddTodoDialog(context);
//         },
//       ),
//     );
//   }
//
//   void _showAddTodoDialog(BuildContext context) {
//     final TextEditingController titleController = TextEditingController();
//
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Add Todo'),
//         content: TextField(
//           controller: titleController,
//           decoration: InputDecoration(
//             labelText: 'Title',
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final String title = titleController.text.trim();
//               if (title.isNotEmpty) {
//                 final Todo newTodo = Todo(
//                   id: DateTime.now().toString(),
//                   title: title,
//                 );
//                 todoController.addOrUpdateTodo(newTodo);
//                 Navigator.of(context).pop();
//               }
//             },
//             child: Text('Add'),
//           ),
//         ],
//       ),
//     );
//   }
// }
