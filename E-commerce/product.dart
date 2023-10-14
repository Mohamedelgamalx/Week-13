import 'customer.dart';
import 'seller.dart';

abstract class Product implements Seller, Customer {
  String? _productName;
  String? _sellerName;
  double? _productCost;
  DateTime? _postedDate;
  Map<String, int> _items = {};

  //setters & getters

  set ProductName(value) => this._productName = value;
  get ProductName => this._productName;

  set SellerName(value) => this._sellerName = value;
  get SellerName => this._sellerName;

  set ProductCost(value) => this._productCost = value;
  get ProductCost => this._productCost;

  set PostedDate(value) => this._postedDate = value;
  get PostedDate => this._postedDate;

  //methods

  addToCart(String itemName, int quantity) {
    if (_items.containsKey(itemName)) {
      _items[itemName] = (_items[itemName]! + quantity);
    } else {
      _items[itemName] = quantity;
    }
  }

  viewCart() {
    print("Items in your cart :");
    _items.forEach((itemName, quantity) {
      print("$itemName: $quantity");
    });
  }
}
