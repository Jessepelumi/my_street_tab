import 'package:get/get.dart';

class SelectCardController extends GetxController {
  var selectedIndex = Rxn<int>();

  final RxList<Map<String, String>> cards = <Map<String, String>>[
    {"cardName": "John Smith", "cardNumber": "1234567887654321"},
    {"cardName": "John Smith", "cardNumber": "9876543212345678"},
  ].obs;

  void selectCard(int index) {
    selectedIndex.value = index;
  }
}
