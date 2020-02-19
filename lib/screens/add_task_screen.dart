import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTile;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5886FF),
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.black87),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTile = newText;
              },
              decoration: InputDecoration(
                hintText: 'Enter Task',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Material(
              color: Color(0xFF5886FF),
              elevation: 5,
              borderRadius: BorderRadius.circular(32.0),
              child: MaterialButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context)
                      .addTask(newTaskTile != null ? newTaskTile : '');
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
