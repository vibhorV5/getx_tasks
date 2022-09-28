import 'package:get/get.dart';

class DropdownController extends GetxController {
  RxString selected = "".obs;

  final listType = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
    'Item9',
    'Item10',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
