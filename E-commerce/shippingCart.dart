import 'customer.dart';

class ShoppingCart extends Customer {
  Map<String, double> a_items = {};
  Map<String, double> d_items = {};

  addItem(String itemName, double price) {
    a_items[itemName] = price;
  }

  deleteItem(String itemName, double price) {
    d_items[itemName] = price;
  }

  calculateTotal() {
    double total = 0;
    a_items.forEach((itemName, price) {
      total += price;
    });
    d_items.forEach((itemName, price) {
      total -= price;
    });
    return total;
  }

  checkout() {
    double total = calculateTotal();
    print("Items in your cart:");
    a_items.forEach((itemName, price) {
      print("$itemName: \$$price");
    });
    d_items.forEach((itemName, price) {
      print("$itemName: -\$$price");
    });
    print("Total Price: \$$total");
  }
}
