import 'package:get/get.dart';
import 'package:getx_tasks/Bindings/bindings.dart';
import 'package:getx_tasks/Screens/Checkbox/View/checkbox_screen.dart';
import 'package:getx_tasks/Screens/Counter/View/counter_screen.dart';
import 'package:getx_tasks/Screens/Dropdown/View/dropdown_screen.dart';
import 'package:getx_tasks/Screens/Form/View/form_screen.dart';
import 'package:getx_tasks/Screens/GendersToggle/View/genders_toggle_screen.dart';
import 'package:getx_tasks/Screens/Home/View/home_screen.dart';

const String home = '/homeScreen';
const String counter = '/counterScreen';
const String form = '/formScreen';
const String gendersToggle = '/gendersToggleScreen';
const String checkbox = '/checkboxScreen';
const String dropdown = '/dropdownScreen';

class Routes {
  static final routes = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: counter, page: () => const CounterScreen()),
    GetPage(name: form, page: () => const FormScreen()),
    GetPage(name: gendersToggle, page: () => const GendersToggleScreen()),
    GetPage(name: dropdown, page: () => const DropdownScreen()),
    GetPage(
      name: checkbox,
      page: () => const CheckboxScreen(),
      binding: AllBindings(),
    ),
  ];
}
