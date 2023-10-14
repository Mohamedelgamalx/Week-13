// ignore_for_file: unused_local_variable
import 'dart:io';
import 'user.dart';

class Customer extends User {
  String? _customerName;
  String? _address;
  String? _email;
  int? _phoneNumber;
  int? _creditCardInfo;

  // setters & getters

  set CustomerName(value) => this._customerName = value;
  get CustomerName => this._customerName;

  set Address(value) => this._address = value;
  get Address => this._address;

  set Email(value) => this._email = value;
  get Email => this._email;

  set PhoneNumber(value) => this._phoneNumber = value;
  get PhoneNumber => this._phoneNumber;

  set CreditCard(value) => this._creditCardInfo = value;
  get CreditCard => this._creditCardInfo;

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
    print('Write you credit card number, please : ');
    int CreditCard = int.parse(stdin.readLineSync()!);
    print('---------------------------------');
    print('Successflly, you are registeration is done');
  }

  @override
  verifyLogin() {
    return super.verifyLogin();
  }
}
