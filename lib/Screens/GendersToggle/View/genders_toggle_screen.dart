import 'package:flutter/material.dart';
import 'package:getx_tasks/Constant/constant.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Screens/GendersToggle/Controller/gender_toggle_controller.dart';

class GendersToggleScreen extends StatefulWidget {
  const GendersToggleScreen({super.key});

  @override
  State<GendersToggleScreen> createState() => _GendersToggleScreenState();
}

class _GendersToggleScreenState extends State<GendersToggleScreen> {
  final genderToggleController = Get.put(GendersToggleController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
              Get.delete<GendersToggleController>();
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Genders Toggle Screen',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: 600,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)
                    // color: Colors.yellow,
                    ),
                height: 40,
                width: mediaQuery.width,
                child: const Text(
                  'Select Gender',
                  style: kTextStyle1,
                ),
              ),
              Obx(() {
                return Column(
                  children: [
                    RadioListTile<String>(
                      title: genderToggleController.genderSelect.value == 'male'
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.only(left: 15),
                              margin: EdgeInsets.only(right: 200),
                              width: 50,
                              height: 30,
                              child: Row(
                                children: [
                                  Text(
                                    'Male',
                                    style: kTextStyle1.copyWith(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  // color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.only(left: 15),
                              margin: EdgeInsets.only(right: 200),
                              width: 50,
                              height: 30,
                              child: Row(
                                children: [
                                  Text(
                                    'Male',
                                    style: kTextStyle1.copyWith(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.male,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                      value: "male",
                      groupValue: genderToggleController.genderSelect.value,
                      onChanged: (String? value) {
                        genderToggleController.genderSelect.value = value!;
                      },
                    ),
                    RadioListTile<String>(
                      title:
                          genderToggleController.genderSelect.value == 'female'
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.only(left: 15),
                                  margin: EdgeInsets.only(right: 200),
                                  width: 50,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Female',
                                        style: kTextStyle1.copyWith(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.female,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      // color: Colors.blue[900],
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.only(left: 15),
                                  margin: EdgeInsets.only(right: 200),
                                  width: 50,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Female',
                                        style: kTextStyle1.copyWith(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.female,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                      value: "female",
                      groupValue: genderToggleController.genderSelect.value,
                      onChanged: (String? value) {
                        genderToggleController.genderSelect.value = value!;
                      },
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
