import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/models/student.dart';

class DatabaseHelper {
  // static final _databaseName = "studentdb.db";
  // static final _databaseVersion = 1;
  //
  //
  // DatabaseHelper._privateConstructor();
  //
  // static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  //
  // static Database? _database;
  //
  // Future<Database?> get database async {
  //   if (_database != null) return _database;
  //   _database = await _initDatabase();
  //   return _database;
  // }
  //
  // _initDatabase() async {
  //   String path = join(await getDatabasesPath(), _databaseName);
  //   return await openDatabase(path,
  //       version: _databaseVersion, onCreate: _onCreate);
  // }
  //
  // Future _onCreate(Database db, int version) async {
  //   await db.execute('''
  //         CREATE TABLE student(
  //           Id INTEGER PRIMARY KEY AUTOINCREMENT,
  //           Name TEXT NOT NULL,
  //           Age INTEGER NOT NULL,
  //           Standard INTEGER NOT NULL
  //         )
  //         ''');
  // }
  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, "studentbd.db"),
      onCreate: (database, verison) async {
        await database.execute("""
        CREATE TABLE student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        Name TEXT NOT NULL,
        Age INTEGER NOT NULL,
        Standard INTEGER NOT NULL
        )
        """);
      },
      version: 1,
    );
  }

  Future<bool> insertData(DataModel dataModel) async {
    final Database db = await _initDatabase();
    db.insert("student", dataModel.toMap());
    return true;
  }

  Future<List<DataModel>> getData() async {
    final Database db = await _initDatabase();
    final List<Map<String, Object?>> datas = await db.query("student");
    return datas.map((e) => DataModel.fromMap(e)).toList();
  }

// Future<List<Map<String, dynamic>>?> queryall() async {
//   Database? db = await instance.database;
//   return await db!.query("student");
// }
//
// Future<List<Map<String, dynamic>>?> queryspecific(int age) async {
//   Database? db = await instance.database;
//   var res = await db?.rawQuery('SELECT * FROM my_table WHERE age >?', [age]);
//   return res;
// }
//
// Future<int?> deletedata(int id) async {
//   Database? db = await instance.database;
//   var res = await db?.delete("student", where: "id = ?", whereArgs: [id]);
//   return res;
// }
//
// Future<int?> updatedata(int id) async {
//   Database? db = await instance.database;
//   var res = await db?.update("student", {"name": "Piyush Vaghasiya", "age": 21},
//       where: "id=?", whereArgs: [id]);
//   return res;
// }
//
// Future<List<Map<String, dynamic>>?> readData(
//     Future<Database> database) async {
//   Database? db = (await instance.readData(database)) as Database?;
//   return await db!.query("student");
// }
}
