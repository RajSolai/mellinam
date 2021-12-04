import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class Respository {
  String dbPath = 'letters.db';
  final databaseController = StreamController<List>();
  DatabaseFactory dbFactory = databaseFactoryIo;

  Stream<List> get databaseStream => databaseController.stream;

  Respository() {
    getAllLetters();
  }

  void addLetter(letter) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    Database db = await dbFactory.openDatabase(join(appDocDir.path, dbPath));
    var store = StoreRef<int, String>.main();
    store.add(db, letter);
  }

  Future<Set> getAllLetters() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    Database db = await dbFactory.openDatabase(join(appDocDir.path, dbPath));
    var store = StoreRef<int, String>.main();
    var arr = Set.from((await store.find(db)).map((e) => e.value));
    return arr;
  }
}
