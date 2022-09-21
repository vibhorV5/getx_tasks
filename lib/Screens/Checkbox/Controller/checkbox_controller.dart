import 'package:get/get.dart';

class CheckboxController extends GetxController {
  RxBool item1 = false.obs;
  RxBool item2 = false.obs;
  RxBool item3 = false.obs;
  RxBool item4 = false.obs;
  RxBool item5 = false.obs;

  @override
  void onClose() {
    super.onClose();
    item1(false);
    item2(false);
    item3(false);
    item4(false);
    item5(false);
  }
}
