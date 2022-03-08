import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _databaseName = "studentdb.db";
  static final _databaseVersion = 1;
  static final table = 'student';

  static final columnId = 'id';
  static final columnName = 'name';
  static final columnAge = 'Age';
  static final columnStandard = 'Standard';

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table(
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL,
            $columnAge INTEGER NOT NULL,
            $columnStandard INTEGER NOT NULL
          )
          ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

  Future<List<Map<String, dynamic>>?> queryall() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  Future<List<Map<String, dynamic>>?> queryspecific(int age) async {
    Database? db = await instance.database;
    var res = await db?.rawQuery('SELECT * FROM my_table WHERE age >?', [age]);
    return res;
  }

  Future<int?> deletedata(int id) async {
    Database? db = await instance.database;
    var res = await db?.delete(table, where: "id = ?", whereArgs: [id]);
    return res;
  }

  Future<int?> updatedata(int id) async {
    Database? db = await instance.database;
    var res = await db?.update(table, {"name": "Piyush Vaghasiya", "age": 21},
        where: "id=?", whereArgs: [id]);
    return res;
  }
}
