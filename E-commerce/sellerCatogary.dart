import 'dart:io';
import 'seller.dart';

class SellerCatogary extends Seller {
  List _catogaries = ['Phones', 'Laptops', 'T.V', 'T-shirts', 'Glassess'];

  //methods

  addCatoragy() {
    print('Do want to add catogary?');
    String answer = stdin.readLineSync()!;
    _catogaries.add(answer);
    print('Your catogaries till are : $_catogaries');
  }

  viewCatogaries() {
    print('Our catogaries are : $_catogaries');
  }
}
