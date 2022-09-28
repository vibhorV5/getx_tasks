import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Screens/Dropdown/Controller/dropdown_controller.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  // String? _chosenValue;
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
            padding: EdgeInsets.only(left: 45), child: Text('Dropdown Screen')),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black54, width: 2)),
                child: DropdownButtonHideUnderline(
                  child: Obx(() {
                    return DropdownButton<String>(
                      isExpanded: true,
                      iconSize: 60,
                      itemHeight: 70,
                      menuMaxHeight: 350,
                      borderRadius: BorderRadius.circular(20),
                      icon: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black54,
                        size: 0,
                      ),
                      focusColor: Colors.white,
                      value: dropdownController.selected.value == ""
                          ? null
                          : dropdownController.selected.value,
                      style: const TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.black,
                      items: dropdownController.listType.map((selectedType) {
                        return DropdownMenuItem(
                          // <String>[
                          //   'Item1',
                          //   'Item2',
                          //   'Item3',
                          //   'Item4',
                          //   'Item5',
                          //   'Item6',
                          //   'Item7',
                          //   'Item8',
                          //   'Item9',
                          // ].map<DropdownMenuItem<String>>((String value) {
                          //   return DropdownMenuItem<String>(
                          //     value: value,
                          // child: SizedBox(
                          //   width: 800,
                          //   child: Text(
                          //     value,
                          //     style: const TextStyle(
                          //       color: Colors.black87,
                          //       fontSize: 22,
                          //       fontWeight: FontWeight.w400,
                          //     ),
                          //   ),
                          // ),
                          //   );
                          // }).toList()
                          value: selectedType,
                          child: SizedBox(
                            width: 800,
                            child: Text(
                              selectedType,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                      hint: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Select Item',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ],
                      ),
                      onChanged: (newValue) {
                        dropdownController.setSelected(newValue!);
                      },
                    );
                  }),
                ),
              ),
              // Obx(
              //   () => DropdownButton(
              //     hint: const Text(
              //       'Items',
              //     ),
              //     onChanged: (newValue) {
              //       dropdownController.setSelected(newValue!);
              //     },
              //     value: dropdownController.selected.value,
              //     items: dropdownController.listItems.map(
              //       (selectedType) {
              //         return DropdownMenuItem(
              //           child: Text(
              //             selectedType,
              //           ),
              //           value: selectedType,
              //         );
              //       },
              //     ).toList(),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
