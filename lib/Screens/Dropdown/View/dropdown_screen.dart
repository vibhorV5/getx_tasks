import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Screens/Dropdown/Controller/dropdown_controller.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  final dropdownController = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(left: 60), child: Text('Dropdown Screen')),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: 600,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => DropdownButton(
                  hint: const Text(
                    'Items',
                  ),
                  onChanged: (newValue) {
                    dropdownController.setSelected(newValue!);
                  },
                  value: dropdownController.selected.value,
                  items: dropdownController.listItems.map(
                    (selectedType) {
                      return DropdownMenuItem(
                        child: Text(
                          selectedType,
                        ),
                        value: selectedType,
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
