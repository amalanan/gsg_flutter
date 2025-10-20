import 'package:flutter/material.dart';
import 'package:session9/todo/data/notes_shared_db.dart';
import 'package:session9/todo/data/notes_sqlite_db.dart';
import 'package:session9/todo/presentation/widgets/note_item.dart';
import 'package:session9/widgets/custom_text_field.dart';
import 'package:session9/todo/data/note_model.dart';

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
                      onPressed: () async {
                        NoteModel note = NoteModel(
                          title: titleController.text,
                          date: '${DateTime.now().day}/${DateTime.now().month}',
                          content: contentController.text,
                        );
                        var id = await NotesSqliteDb.insertNoteToDo(note);
                    fetchList();
                     /*   note = NoteModel(
                          title: note.title,
                          content: note.content,
                          date: note.content,
                          id: id,
                        );*/

                        setState(() {
                          notes.add(note);
                              });  //  NotesSharedDB.updateListAtDB(notes);
                          titleController.clear();
                          contentController.clear();
                          Navigator.pop(context);
                  
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
      body:
          notes.isEmpty
              ? const Center(child: Text('there\'s nothing to show'))
              : ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return NoteItem(
                    note: notes[index],
                    onDismissed: (direction) {
                      setState(() {
                        NotesSqliteDb.deleteNoteFromDB(notes[index]);

                        notes.removeAt(index);
                        //     NotesSharedDB.updateListAtDB(notes);
                        if (notes.length == 0) {
                          setState(() {});
                        }
                      });
                    },
                  );
                },
              ),
    );
  }

  fetchList() async {
    var fetchedList = await NotesSqliteDb.getNotesFromDB();
    //  var fetchedList = await NotesSharedDB.fetchListFromSharedDB();
    setState(() async {
      notes = fetchedList!;
    });
  }
}
