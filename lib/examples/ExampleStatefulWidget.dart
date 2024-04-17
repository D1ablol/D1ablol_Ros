import 'package:flutter/material.dart';

class ExampleStatefulWidget extends StatefulWidget {
  const ExampleStatefulWidget({Key? key}) : super(key: key);

  @override
  _ExampleStatefulWidgetState createState() => _ExampleStatefulWidgetState();
}

class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Кликов: $_count',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: _incrementCount,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, 
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), 
                ),
              ),
              child: const Text(
                'Клик',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
