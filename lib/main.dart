import 'package:flutter/material.dart';
import 'package:ros_Alibek/examples/ExampleArgumentRoutes.dart';
import 'package:ros_Alibek/examples/ExampleColumnRow.dart';
import 'package:ros_Alibek/examples/ExampleContainerBoxDecoration.dart';
import 'package:ros_Alibek/examples/ExampleFonts.dart';
import 'package:ros_Alibek/examples/ExampleGridViewPage.dart';
import 'package:ros_Alibek/examples/ExampleImage.dart';
import 'package:ros_Alibek/examples/ExampleListViewPage.dart';
import 'package:ros_Alibek/examples/ExampleRoutes.dart';
import 'package:ros_Alibek/examples/ExampleStackPositionedIndexedStack.dart';
import 'package:ros_Alibek/examples/ExampleStatefulWidget.dart';
import 'package:ros_Alibek/examples/ExampleStatlessWidget.dart';
import 'package:ros_Alibek/examples/ExampleThemeStyle.dart';
import 'package:ros_Alibek/examples/ExmaplePageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            ExampleStatlessWidget(),
            ExampleStatefulWidget(),
            ExampleContainerBoxDecoration(),
            ExampleColumnRow(),
            LinkToExampleListViewPage(),
            LinkToExampleGridViewPage(),
            LinkToExamplePageView(),
            ExampleStackPositionedIndexedStack(),
            ExampleFonts(),
            ExampleImage(),
            ExampleTheme(),
            ExampleRoutes(),
            ExampleArgumentRoutes(),
          ],
        ),
      ),
    );
  }
}