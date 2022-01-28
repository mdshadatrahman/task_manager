import 'package:flutter/material.dart';
import 'package:task_manager/widgets/task_tile.dart';

class AddTask extends StatelessWidget {
  final Function callbackFunction;
  const AddTask({Key? key, required this.callbackFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return Container(
      color: const Color(0xff757575),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    callbackFunction(
                      textEditingController.text,
                    );
                    textEditingController.clear();
                  },
                  child: const Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
