import 'package:flutter/material.dart';

class GendersToggleScreen extends StatefulWidget {
  const GendersToggleScreen({super.key});

  @override
  State<GendersToggleScreen> createState() => _GendersToggleScreenState();
}

class _GendersToggleScreenState extends State<GendersToggleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Genders Toggle Screen')),
      ),
      body: Center(
        child: Text('Toggle Functionality will go here'),
      ),
    );
  }
}
