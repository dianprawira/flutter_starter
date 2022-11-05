import 'package:flutter/material.dart';
import '../data/model/task.dart';
import '../data/api/api_task.dart';
import 'dart:async';
// import 'dart:convert';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key});

  @override
  State<CreateTaskPage> createState() {
    return _CreateTaskPageState();
  }
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final TextEditingController _controller = TextEditingController();
  Future<Task>? _futureTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Data Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: (_futureTask == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Task Name'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureTask = ApiTask().createTask(_controller.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<Task> buildFutureBuilder() {
    return FutureBuilder<Task>(
      future: _futureTask,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.name);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
