import 'user.dart';

class Authentication {
  Authentication({
    required this.success,
    required this.user,
    required this.token,
  });

  bool success;
  User user;
  String token;

  factory Authentication.fromJson(Map<String, dynamic> json) => Authentication(
        success: json["success"],
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "user": user.toJson(),
        "token": token,
      };
}
