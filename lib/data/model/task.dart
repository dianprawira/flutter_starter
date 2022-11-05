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
