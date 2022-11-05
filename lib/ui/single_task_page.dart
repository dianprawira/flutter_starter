import 'package:flutter/material.dart';
import 'package:flutter_starter/data/api/api_task.dart';
// import 'package:http/http.dart' as http;
import '../data/model/task.dart';

class SingleTaskPage extends StatefulWidget {
  const SingleTaskPage({super.key});

  @override
  State<SingleTaskPage> createState() {
    return _SingleTaskPageState();
  }
}

class _SingleTaskPageState extends State<SingleTaskPage> {
  late Future<Task> _task;

  @override
  void initState() {
    super.initState();
    _task = ApiTask().getDetail(20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Data Example'),
      ),
      body: FutureBuilder(
        future: _task,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            // return AlbumsList(photos: snapshot.data!);
            return Center(
              child: Text(snapshot.data!.name),
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
