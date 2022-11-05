import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/detail_task_page.dart';
import '../data/model/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index].name),
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailTaskPage(idTask: tasks[index].id);
          })),
        );
      },
    );
  }
}
