import 'package:coding_hack_weather_assignment/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class Boxes {
  static Box<UserTable> getUsers() => Hive.box<UserTable>(UserTable.TABLE_NAME);
}

Future<void> initDatabase() async {
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);

  Hive.registerAdapter(UserAdapter());

  Hive.openBox<UserTable>(UserTable.TABLE_NAME);
}
