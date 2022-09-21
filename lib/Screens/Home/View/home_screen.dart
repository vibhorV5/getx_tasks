import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tasks/Routes/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text('Home Screen')),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: mediaQuery.width,
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Buttons for Screens
                TextButton(
                  onPressed: () async {
                    await Get.toNamed(gendersToggle);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: const Center(child: Text('Genders Toggle Screen')),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () async {
                    await Get.toNamed(form);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: const Center(child: Text('Form Screen')),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () async {
                    await Get.toNamed(counter);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: const Center(child: Text('Counter Screen')),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: const Center(
                        child: FittedBox(
                            child: Text(
                                'Bindings Screen (Checkbox or dropdown)'))),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
