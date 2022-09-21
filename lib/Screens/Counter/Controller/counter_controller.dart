import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt currentCount = 0.obs;

  @override
  void onClose() {
    super.onClose();
    currentCount(0);
  }
}
