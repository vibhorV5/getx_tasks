import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  var email = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? emailValidate(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Enter a valid email id';
    } else {
      return null;
    }
  }

  String? passwordValidate(String value) {
    if (value.length < 8) {
      return 'Password length should be at least 8 characters';
    } else {
      return null;
    }
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      loginFormKey.currentState!.save();
    }
  }
}
