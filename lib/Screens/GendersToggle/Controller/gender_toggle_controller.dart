import 'package:get/get.dart';

class GendersToggleController extends GetxController {
  RxString genderSelect = 'male'.obs;

  @override
  void onClose() {
    super.onClose();
    genderSelect('male');
  }
}
