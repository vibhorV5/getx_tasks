import 'package:flutter/material.dart';

//Stateless widget se karna h ise

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Counter Screen')),
      ),
      body: Center(
        child: Text('Counter will go here'),
      ),
    );
  }
}
