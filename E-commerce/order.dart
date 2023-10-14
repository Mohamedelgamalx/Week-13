import 'dart:io';
import 'customer.dart';

class Order extends Customer {
  int? orderId;
  String dateShipped = '2023';

  // setters & getters

  set OrderId(value) => this.orderId = value;
  get OrderId => this.orderId;

  //methods

  placeOrder() {
    print('Write you order ID, please : ');
    int OrderId = int.parse(stdin.readLineSync()!);
    print('Date shipped is $dateShipped');
    print('Write you name, please : ');
    String CustomerName = stdin.readLineSync()!;
    print('Write you user Id, please : ');
    String UserId = stdin.readLineSync()!;
    print('---------------------------------');
    print(
        'Correct Order :\nOrder ID : $OrderId\nDate shipped : $dateShipped\nCustomer Name : $CustomerName\nUser ID : $UserId');
  }
}
