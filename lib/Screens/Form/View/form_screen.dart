import 'package:flutter/material.dart';
import 'package:getx_tasks/Constant/constant.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Screens/Form/Controller/form_controller.dart';

class FormScreen extends GetView<FormController> {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FormController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 65.0),
          child: Text('Form Screen'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: 600,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: controller.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Please enter your login details',
                      style: kTextStyle1.copyWith(
                          color: Colors.black, fontSize: 16),
                    ),
                  ),

                  //Form Fields
                  TextFormField(
                    onSaved: (newValue) {
                      controller.email = newValue!;
                    },
                    validator: (value) {
                      return controller.emailValidate(value!);
                    },
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          // width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          // width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          // width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          // width: 2.0,
                        ),
                      ),
                      labelText: 'Email',
                      labelStyle: kTextStyle1.copyWith(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      controller.password = newValue!;
                    },
                    validator: (value) {
                      return controller.passwordValidate(value!);
                    },
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          // width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          // width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          // width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          // width: 2.0,
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: kTextStyle1.copyWith(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),

                  //Confirm Button
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextButton(
                      onPressed: () {
                        controller.checkLogin();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 8),
                        child: Text(
                          'Login',
                          style: kTextStyle1.copyWith(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
