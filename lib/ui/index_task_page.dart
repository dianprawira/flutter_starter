import 'package:flutter/material.dart';
import 'package:flutter_starter/data/api/api_task.dart';
// import 'package:http/http.dart' as http;
import '../widget/tasks_list.dart';
import '../data/model/task.dart';

class IndexTaskPage extends StatefulWidget {
  const IndexTaskPage({super.key});

  @override
  State<IndexTaskPage> createState() {
    return _IndexTaskPageState();
  }
}

class _IndexTaskPageState extends State<IndexTaskPage> {
  late Future<List<Task>> _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = ApiTask().listOfTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Example'),
      ),
      body: FutureBuilder(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            // return AlbumsList(photos: snapshot.data!);
            return TasksList(
              tasks: snapshot.data!,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
