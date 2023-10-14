import 'dart:io';
import 'seller.dart';

class SellerAddingItems extends Seller {
  List<String> _addItems = [];

  addingItems() {
    while (true) {
      print("Do you want to add an item? (YES/NO): ");
      String response = stdin.readLineSync()!.toUpperCase();
      if (response == "YES") {
        print('Add Item : ');
        response = stdin.readLineSync()!;
        print('Your Items are : $_addItems');
      } else if (response == "NO") {
        print(_addItems);
        break;
      } else {
        print("Invalid input. Please enter 'yes' or 'no'.");
      }
    }
  }
}
