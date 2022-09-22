import 'package:get/get.dart';

class DropdownController extends GetxController {
  final selected = 'item1'.obs;

  final listItems = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
