// ignore_for_file: unused_local_variable
import 'dart:io';
import 'user.dart';

abstract class Seller extends User {
  String? _sellerName;
  String? _address;
  String? _email;
  int? _phoneNumber;

  //setters & getters

  set SellerName(value) => this._sellerName = value;
  get SellerName => this._sellerName;

  set Address(value) => this._address = value;
  get Address => this._address;

  set Email(value) => this._email = value;
  get Email => this._email;

  set PhoneNumber(value) => this._phoneNumber = value;
  get PhoneNumber => this._phoneNumber;

  //methods

  register() {
    print('Write you name, please : ');
    String CustomerName = stdin.readLineSync()!;
    print('Write you address, please : ');
    String Address = stdin.readLineSync()!;
    print('Write you E-mail@gmail.com, please : ');
    String Email = stdin.readLineSync()!;
    print('Write you phone number, please : ');
    int PhoneNumber = int.parse(stdin.readLineSync()!);
    print('---------------------------------');
    print('Successflly, you are registeration is done');
  }

  @override
  verifyLogin() {
    return super.verifyLogin();
  }
}
