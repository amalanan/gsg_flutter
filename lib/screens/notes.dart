import 'package:flutter/material.dart';
import 'package:session9/widgets/custom_text_field.dart';
import 'package:session9/models/note_model.dart';

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
      appBar: AppBar(title: Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(40),
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
                          NoteModel note = NoteModel(title: titleController.text, date:'${DateTime.now().day} // ${DateTime.now().month}' , content: contentController.text)
                          notes.add(note);
                          titleController.clear();
                          contentController.clear();
                     //     updateList();
                          Navigator.pop(context);
                        });
                      },
                      child: Text('add'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body:
          notes.isEmpty
              ? Center(child: Text('there\'s nothing to show'))
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
                          if (notes.length == 0) {
                            setState(() {});
                          }
                        });
                      },
                      child: ListTile(
                        title: Text(notes[index].title),
                        subtitle: Text(notes[index].content),
                        trailing: InkWell(
                        onTap: (){
                        print(notes[index].toJson);
                    },
                    child:Text(notes[index].date),
                      ),
                      /* child: Container(
                        width:  double.infinity,
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(notes[index]),
                      ),*/
                    ),
                  );
                },
              ),
    );
  }

  updateList() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(notesKey, notes);
  }

  fetchList() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      notes = prefs.getStringList(notesKey) ?? [];
    });
  }
}
