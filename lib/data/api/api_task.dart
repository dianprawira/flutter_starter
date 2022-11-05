import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/task.dart';
import '../../common/url_address.dart';

class ApiTask {
  Future<List<Task>> listOfTask() async {
    final response = await http.get(Uri.parse("$urlTask/tasks"));
    if (response.statusCode == 200) {
      return List<Task>.from(
          json.decode(response.body).map((x) => Task.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Task> getDetail(int id) async {
    final response = await http.get(Uri.parse("$urlTask/tasks/$id"));
    if (response.statusCode == 200) {
      return Task.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

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
}
