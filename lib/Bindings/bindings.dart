import 'package:get/get.dart';
import 'package:getx_tasks/Screens/Checkbox/Controller/checkbox_controller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckboxController());
  }
}
