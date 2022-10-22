import 'package:flutter/rendering.dart';
import 'package:path/path.dart';
//import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasesPath = await getDatabasesPath();
    String databaseName = join(databasesPath, 'pacote.db');
    var db = await openDatabase(
      databaseName,
      version: 1,
      onCreate: onCreate,
    );

    print(databaseName);
    return db;
  }

  onCreate(db, int version) async {
    String sql =
        'CREATE TABLE package (text varchar(100), number varchar(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (1, 'Direitos Humanos', '100');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (2, 'Centro de Velorização a Vida', '180');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (3, 'Disque Denúncia', '181');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (4, 'Polícia Militar', '190');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (5, 'Ambulância Pública (SAMU)', '192');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (6, 'Corpo de Bombeiros', '193');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (7, 'Polícia Civil', '197');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (8, 'Polícia Rodoviária Estadual', '198');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (text, number) VALUES (9, 'Defesa Civil', '199');";
    await db.execute(sql);
  }

  openDatabase(String databaseName,
      {required int version,
      required Function(dynamic db, int version) onCreate}) {}
}

getDatabasesPath() {}
