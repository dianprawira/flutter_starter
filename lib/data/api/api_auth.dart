import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/authentication.dart';
import '../../common/url_address.dart';

class ApiAuth {
  Authentication authenticationFromJson(String str) =>
      Authentication.fromJson(json.decode(str));

  String authenticationToJson(Authentication data) =>
      json.encode(data.toJson());

  Future<Authentication> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$urlTask/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return authenticationFromJson(response.body);
    } else {
      throw 'Login masih gagal';
    }
  }
}
