import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt quantity = 0.obs;

  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }
}
