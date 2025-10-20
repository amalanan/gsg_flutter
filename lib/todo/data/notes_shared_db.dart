import 'package:session9/todo/data/note_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesSharedDB {
  static late final SharedPreferences prefs;
  static final String notesKey = 'notes';
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    // print('SharedPrefs initialized');
  }

  static updateListAtDB(List<NoteModel> notes) async {
    List<String> notesAsString = [];
    for (var note in notes) {
      notesAsString.add(note.toJson());
    }
    prefs.setStringList(notesKey, notesAsString);
  }

  static Future<List<NoteModel>> fetchListFromSharedDB() async {
    final prefs = await SharedPreferences.getInstance();
    var notesAsString = prefs.getStringList(notesKey) ?? [];

    List<NoteModel> notes = [];
    for (var n in notesAsString) {
      NoteModel note = NoteModel.fromJson(n);
      notes.add(note);
    }
    return notes;
  }
}
