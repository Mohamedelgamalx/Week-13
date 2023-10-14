import 'dart:io';
import 'dart:math';
import 'shippingCart.dart';

class CreditCard extends ShoppingCart {
  int? bankId;
  int? orderId;

  //methods

  chooseTypeOfPaid() {
    print('Do you want cash or credit?');
    String answer = stdin.readLineSync()!;
    if (answer.toLowerCase() == 'cash') {
      print('Thank you, you will pay cash');
    } else {
      print('Write your credit number?');
    }
  }

  generateOTP(int length) {
    final random = Random();
    final buffer = StringBuffer();

    for (int i = 0; i < length; i++) {
      buffer.write(random.nextInt(10)); // Generates a random digit (0-9)
    }

    String otp = buffer.toString();
    print("Generated OTP: $otp"); // Print the OTP inside the function
    return otp;
  }
}
