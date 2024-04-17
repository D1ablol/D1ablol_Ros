import 'package:flutter/material.dart';

class ExampleStatlessWidget extends StatelessWidget {
  const ExampleStatlessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
      ),
      body: const Center(
        child: Text('StatelessWidget'),
      ),
    );
  }
}
