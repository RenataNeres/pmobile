import 'package:reh923/data/BDLista_helper.dart';
import 'package:reh923/phones.dart';
import 'package:sqflite/sqflite.dart';

class ListaDao {
  Future<List<Phones>> listarTelefones() async {
    DBHelper dbHelper = DBHelper();
    var db = await dbHelper.initDB();

    String sql = 'SELECT * FROM package;';
    var result = await db.rawQuery(sql);

    List<Phones> lista = <Phones>[];
    for (var json in result) {
      Phones ubs = Phones.fromJson(json);
      lista.add(ubs);
    }

    return lista;
  }
}
