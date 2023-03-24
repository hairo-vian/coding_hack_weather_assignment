import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class UserTable {
  static const String TABLE_NAME = "user";
  @HiveField(0)
  String? email;

  @HiveField(1)
  String? username;

  @HiveField(2)
  String? password;

  @HiveField(3)
  String? fullname;
}