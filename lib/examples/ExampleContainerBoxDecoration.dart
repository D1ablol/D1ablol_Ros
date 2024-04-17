import 'package:flutter/material.dart';

class ExampleContainerBoxDecoration extends StatelessWidget {
  const ExampleContainerBoxDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 77, 10, 90),
              blurRadius: 10.0,
              spreadRadius: 10.0, // сдвиг тени
              offset: Offset(0, 10), 
            )
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2024/02/26/14/06/flower-8598044_1280.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Text(
          'A Flower',
          style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 218, 41, 241)),
        ),
      ),
    );
  }
}
