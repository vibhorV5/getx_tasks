import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Screens/Checkbox/Controller/checkbox_controller.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text('Checkbox Screen'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 780,
          width: 600,
          color: Colors.white,
          child: Obx(
            () {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  children: [
                    //Checkboxes will go here

                    CheckboxListTile(
                      title: Text('Item 1'),
                      value: Get.find<CheckboxController>().item1.value,
                      onChanged: (value) {
                        Get.find<CheckboxController>().item1.value = value!;
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Item 2'),
                      value: Get.find<CheckboxController>().item2.value,
                      onChanged: (value) {
                        Get.find<CheckboxController>().item2.value = value!;
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Item 3'),
                      value: Get.find<CheckboxController>().item3.value,
                      onChanged: (value) {
                        Get.find<CheckboxController>().item3.value = value!;
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Item 4'),
                      value: Get.find<CheckboxController>().item4.value,
                      onChanged: (value) {
                        Get.find<CheckboxController>().item4.value = value!;
                      },
                    ),
                    CheckboxListTile(
                      title: Text('Item 5'),
                      value: Get.find<CheckboxController>().item5.value,
                      onChanged: (value) {
                        Get.find<CheckboxController>().item5.value = value!;
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
