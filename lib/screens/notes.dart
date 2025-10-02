import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:session9/widgets/custom_text_field.dart';
import 'package:session9/models/note_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<NoteModel> notes = [];
  final String notesKey = 'notes';
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      fieldController: titleController,
                      hint: 'title',
                    ),
                    CustomTextField(
                      fieldController: contentController,
                      hint: 'content',
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          NoteModel note = NoteModel(
                            title: titleController.text,
                            date:
                                '${DateTime.now().day}/${DateTime.now().month}',
                            content: contentController.text,
                          );
                          notes.add(note);
                          updateList(); // ✅ Save to SharedPreferences
                          titleController.clear();
                          contentController.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: const Text('add'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: notes.isEmpty
          ? const Center(child: Text('there\'s nothing to show'))
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: Container(color: Colors.red),
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    setState(() {
                      notes.removeAt(index);
                      updateList();
                    });
                  },
                  child: ListTile(
                    title: Text(notes[index].title),
                    subtitle: Text(notes[index].content),
                    trailing: InkWell(
                      onTap: () {
                        print(notes[index].toJson()); // ✅ fixed
                      },
                      child: Text(notes[index].date),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Future<void> updateList() async {
    final prefs = await SharedPreferences.getInstance();
   List<String> notesAsString = [];
   for(var note in this.notes){
    notesAsString.add(note.toJson());
   }
    await prefs.setStringList(notesKey, notesAsString);
  }

  Future<void> fetchList() async {
    final prefs = await SharedPreferences.getInstance();
  var notesAsString = prefs.getStringList(notesKey) ?? [];
  for (var n in notesAsString){
NoteModel note = NoteModel.fromJson(n);
setState(() {
  notes.add(note);
});
  }
  }
}
