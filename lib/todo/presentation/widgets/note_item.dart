import 'package:flutter/material.dart';
import 'package:session9/todo/data/note_model.dart';
import 'package:session9/todo/data/notes_sqlite_db.dart';
import 'package:session9/widgets/custom_text_field.dart';

class NoteItem extends StatelessWidget {
   NoteItem({super.key, this.onDismissed, required this.note}){
    contentController.text = note.content;
    titleController.text = note.title;
   }
  final void Function(DismissDirection)? onDismissed;
  final NoteModel note;
 TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(color: Colors.red),
      key: UniqueKey(),
      onDismissed: onDismissed,
      child: ListTile(
        title: Text(note.title),
        subtitle: Text(note.content),
        trailing:Text(note.date),
        onTap: (){
          
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
                       NoteModel updatedNote = NoteModel(
                        id: note.id,
                        title: titleController.text,
                        content: contentController.text,
                        date: note.date
                       );
                       await NotesSqliteDb.updateNoteFromDB(updatedNote);
                          
                          Navigator.pop(context);
                  
                      },
                      child: const Text('update'),
                    ),
                  ],
                ),
              );
            },
          );

        },
      ),
    );
  }
}
