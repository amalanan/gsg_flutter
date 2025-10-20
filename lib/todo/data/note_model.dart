import 'dart:convert';

class NoteModel {
  String title;
  String date;
  String content;
int id;
  NoteModel({
     this.id = 0,
    required this.title,
    required this.date,
    required this.content,
  });


  /// Convert the model to a Map (JSON-serializable)
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date,
      'content': content,
    };
  }

  /// Encode to JSON string
  String toJson() {
    return jsonEncode({"title": title, "date": date, "content": content});
  }

  /// Construct from a Map
  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      title: map['title'] ?? '',
      date: map['date'] ?? '',
      content: map['content'] ?? '',
         id: map['id'] ?? 0
    );
  }

  /// Construct from a JSON string
  factory NoteModel.fromJson(String source) {
    return NoteModel.fromMap(jsonDecode(source));
  }
}
