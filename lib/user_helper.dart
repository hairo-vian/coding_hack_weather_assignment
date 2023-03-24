import 'package:coding_hack_weather_assignment/user.dart';

import 'boxes.dart';

class UserHelper {
  List<UserTable> getUsersFromDatabase() {
    return Boxes.getUsers().values.toList();
    //SELECT * FROM USER
  }

  void insertUserToDatabase(UserTable user) {
    UserTable newUser = UserTable()
      ..email = user.email
      ..username = user.username
      ..fullname = user.fullname
      ..password = user.password;

    Boxes.getUsers().add(newUser);
    //INSERT INTO USER VALUES(email,username,fullname,password)
  }

  void updateUserPassword(String email, String password) {
    UserTable user = Boxes.getUsers().values.where((element) => element.email == email).toList()[0];
    user.password = password;
    Boxes.getUsers().put(user.email, user);
    //UPDATE USER SET USER.password = password WHERE User.email = email
  }

  void deleteUser(String email) {
    Boxes.getUsers().delete(email);
    //DELETE FROM USER where User.email = email
  }
}
