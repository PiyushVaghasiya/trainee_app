import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/models/database_cart_model.dart';

class DB {
  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, "cartdb.db"),
      onCreate: (database, verison) async {
        await database.execute("""
         
        CREATE TABLE cart(
        Images TEXT NOT NULL,
        Title TEXT NOT NULL,
        Description TEXT NOT NULL,
        Counter INTEGER NOT NULL
        )
        """);
      },
      version: 1,
    );
  }

  Future<bool> insertData(DatabaseCartModel dataModel) async {
    final Database db = await _initDatabase();
    db.insert("cart", dataModel.toMap());
    return true;
  }

  Future<List<DatabaseCartModel>> getData() async {
    final Database db = await _initDatabase();
    final List<Map<String, Object?>> datas = await db.query("cart");
    return datas.map((e) => DatabaseCartModel.fromMap(e)).toList();
  }

  Future<void> update(int counter, int id) async {
    final Database db = await _initDatabase();
    await db.execute("Update cart set Counter=$counter where Id=$id");
  }
}
