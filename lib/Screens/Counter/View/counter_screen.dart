import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Constant/constant.dart';
import 'package:getx_tasks/Screens/Counter/Controller/counter_controller.dart';

class CounterScreen extends GetView<CounterController> {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    final mediaQuery = MediaQuery.of(context).size;
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
            padding: EdgeInsets.only(left: 50), child: Text('Counter Screen')),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: 600,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Display Count
              Obx(
                () {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)
                        // color: Colors.yellow,
                        ),
                    height: 40,
                    width: mediaQuery.width,
                    child: Text(
                      'Current count  =  ${controller.currentCount}',
                      style: kTextStyle1,
                    ),
                  );
                },
              ),

              //Increment & Decrement Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextButton(
                      onPressed: () {
                        if (controller.currentCount < 1) {
                          Get.snackbar(
                            "Counter can't go below 0",
                            "Tap Increment to increase value by 1",
                            icon: const Icon(Icons.info, color: Colors.white),
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.blueGrey.withOpacity(0.5),
                          );
                          return;
                        }
                        controller.currentCount - 1;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Text(
                          'Decrement',
                          style: kTextStyle1.copyWith(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextButton(
                      onPressed: () {
                        controller.currentCount + 1;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Text(
                          'Increment',
                          style: kTextStyle1.copyWith(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
