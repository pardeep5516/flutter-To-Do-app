import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.longPressCallback,
      this.checkBoxCallback});

  final String taskTitle;
  final bool isChecked;
  final Function longPressCallback;
  final Function checkBoxCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle.toUpperCase(),
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF4263EC),
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Color(0xFF5886FF),
        onChanged: checkBoxCallback,
      ),
    );
  }
}
