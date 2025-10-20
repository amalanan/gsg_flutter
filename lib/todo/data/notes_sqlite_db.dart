// import 'package:sqlite/sqlite.dart';
import 'package:session9/todo/data/note_model.dart';
import 'package:sqflite/sqflite.dart';

class NotesSqliteDb {
static late Database _database;
static String dbPath = 'notes.db';
static String tableName= 'notes';
static String columnId = 'id';
static String columnTitle = 'title';
static String columnContent = 'content';
static String columnDate = 'date';
static Future<void> init() async{
  _database = await openDatabase(dbPath, 
  version: 1,
  onCreate: (db, version){
   print('onCreate DB called');
    db.execute('CREATE TABLE $tableName ($columnId INTEGER PRIMARY KEY, $columnTitle TEXT,$columnContent TEXT,$columnDate TEXT)');
  }, onOpen: (db){
    print('onOpen DB called');
  }
  
  
  );
}




//operations 

//insert
static insertNoteToDo(NoteModel noteModel) async {
 int id = await _database.rawInsert('INSERT INTO $tableName($columnTitle, $columnContent, $columnDate) Values("${noteModel.title}", "${noteModel.content}" , "${noteModel.date}")');
  print('note inserted with id $id');
}
//read
static Future<List<NoteModel>?> getNotesFromDB() async {
 var result = await _database.rawQuery('SELECT * FROM $tableName'); //استعلام 
print(result);
}

//delete

}
