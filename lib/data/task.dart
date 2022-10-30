import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../data/constant.dart';

Future<Task> createTask(String name) async {
  final response = await http.post(
    Uri.parse('$urlTask/tasks'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': name,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Task.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create Task.');
  }
}

Future<List<Task>> fetchTasks(http.Client client) async {
  final response = await client.get(
    Uri.parse('$urlTask/tasks'),
    headers: {
      'Authorization': 'Bearer oiueqwu873429374947979',
    },
  );

  // Use the compute function to run parseTasks in a separate isolate.
  return compute(parseTasks, response.body);
}

// A function that converts a response body into a List<Task>.
List<Task> parseTasks(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Task>((json) => Task.fromJson(json)).toList();
}

class Task {
  final int id;
  final String name;

  const Task({required this.id, required this.name});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      name: json['name'],
    );
  }
}
