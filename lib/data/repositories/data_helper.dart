import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataHelper {
  DataHelper._();

  static final DataHelper instance = DataHelper._();
  static const String cartTable = 'cart_items';

  Future<Database>? _database;

  Future<Database> get database => _database ??= _initData();

  Future<Database> _initData() async {
    final path = join(await getDatabasesPath(), 'ShoppingCart.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $cartTable (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            product TEXT NOT NULL,
            quantity INTEGER NOT NULL DEFAULT 1 CHECK (quantity > 0),
            is_selected INTEGER NOT NULL DEFAULT 0
              CHECK (is_selected IN (0, 1))
          )
        ''');
      },
    );
  }

}
