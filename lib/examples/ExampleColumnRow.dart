import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    required this.textColor,
    required this.containerColor,
    required this.width,
    required this.fontSize,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color containerColor;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: containerColor,
      height: 120, 
      alignment: Alignment.center, // Центрирование
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}

class ExampleColumnRow extends StatelessWidget {
  const ExampleColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        TextWidget(
          containerColor: Color.fromARGB(255, 108, 15, 136),
          textColor: Colors.white,
          width: 150, 
          text: 'First',
          fontSize: 30,
        ),
        TextWidget(
          containerColor: Colors.cyanAccent,
          textColor: Colors.black,
          width: 200, 
          text: 'Second',
          fontSize: 25,
        ),
        TextWidget(
          containerColor: Colors.purpleAccent,
          textColor: Color.fromARGB(255, 20, 173, 109),
          width: 130, 
          text: 'Third',
          fontSize: 20,
        ),
      ],
    );
  }
}
