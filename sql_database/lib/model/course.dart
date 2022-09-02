class Course {
  final int? id;
  final String name, content;
  final int hours;
  Course(
      {this.id,
      required this.name,
      required this.content,
      required this.hours});

  factory Course.fromMap(Map<String, dynamic> data) => new Course(
      id: data['id'],
      name: data['name'],
      content: data['content'],
      hours: data['hours']);

  Map<String, dynamic> toMap() =>
      {'id': id, 'name': name, 'content': content, 'hours': hours};
}
