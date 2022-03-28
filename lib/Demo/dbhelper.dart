import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/models/insta_post.dart';

class DBHelper {
  Database? db;

  Future<Database?> get database async {
    if (db != null) {
      return db;
    }
    db = await initDatabase();
    return db;
  }

  initDatabase() async {
    var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir, "asset_insta.db");
    if (FileSystemEntity.typeSync(dbPath) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load("assets/database/insta.db");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(dbPath).writeAsBytes(bytes);
    }
    var db = await openDatabase(dbPath);
    return db;
  }

  dbSelect() async {
    Database? db = await database;
    List<Post> lstData = [];
    final result = await db?.rawQuery('SELECT * FROM instagram');
    if (result != null && result.isNotEmpty) {
      result.forEach((element) {
        lstData.add(Post.fromMap(element));
      });
    }
    return lstData;
  }
}
