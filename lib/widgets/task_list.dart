import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key, required this.taskLists}) : super(key: key);
  
  final List<Widget> taskLists;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: widget.taskLists,
    );
  }
}




























// return ListView(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       children: [
//         TaskTile(
//           text: 'Buy milk',
//         ),
//         TaskTile(
//           text: 'Buy eggs',
//         ),
//         TaskTile(
//           text: 'Buy bread',
//         ),
//       ],
//     );