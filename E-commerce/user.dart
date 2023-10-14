// ignore_for_file: unused_local_variable
import 'dart:io';

class User {
  String? _userId;
  String? _password;
  List<User> _users = [];

  // setters & getters

  set UserId(value) => this._userId = value;
  get UserId => this._userId;

  set Password(value) => this._password = value;
  get Password => this._password;

  //methods

  verifyLogin() {
    print('Write you user Id, please : ');
    String _UserId = stdin.readLineSync()!;
    print('Write you password, please : ');
    String _Password = stdin.readLineSync()!;
    _users.add(_UserId as User);
    print('---------------------------------');
    print('Correct Login for ID : ${_users[0].UserId}');
  }
}
