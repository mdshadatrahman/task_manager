import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  TaskTile({Key? key, required this.text}) : super(key: key);
  final String text;
  bool checkBox = false;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
          decoration: widget.checkBox ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.checkBox,
        onChanged: (newValue) {
          setState(() {
            widget.checkBox = newValue!;
          });
        },
      ),
    );
  }
}
