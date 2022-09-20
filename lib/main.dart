import 'package:flutter/material.dart';
import 'package:getx_tasks/Routes/routes.dart';
import 'package:getx_tasks/Screens/Home/View/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      title: 'getx simple tasks',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
    );
  }
}
