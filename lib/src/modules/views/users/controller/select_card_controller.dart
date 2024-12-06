import 'package:get/get.dart';

class SelectCardController extends GetxController {
  var selectedIndex = Rxn<int>();

  final RxList<Map<String, String>> cards = <Map<String, String>>[
    {
      "cardName": "John Smith",
      "cardNumber": "1234567887654321",
      "expiryDate": "12/28",
      "cvv": "123",
      "cardType": "MasterCard"
    },
    {
      "cardName": "John Smith",
      "cardNumber": "9876543212345678",
      "expiryDate": "09/27",
      "cvv": "123",
      "cardType": "Paypal"
    },
    {
      "cardName": "Smith John",
      "cardNumber": "3453478965419623",
      "expiryDate": "04/30",
      "cvv": "123",
      "cardType": "Stripe"
    },
  ].obs;

  @override
  void onInit() {
    super.onInit();
    if (cards.isNotEmpty) {
      selectedIndex.value = 0;
    }
  }

  void selectCard(int index) {
    if (index >= 0 && index < cards.length) {
      selectedIndex.value = index;
    }
  }
}
