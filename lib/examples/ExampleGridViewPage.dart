import 'package:flutter/material.dart';

class LinkToExampleGridViewPage extends StatelessWidget {
  const LinkToExampleGridViewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Переход на GridViewPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('GridViewPage'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExampleGridViewPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleGridViewPage extends StatelessWidget {
  const ExampleGridViewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExampleGridViewPage'),
        centerTitle: true,
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          GridViewWidget(),
          GridViewBuilderWidget(),
          GridViewCountWidget(),
          GridViewExtentWidget(),
          GridViewCustomWidget(),
        ],
      ),
    );
  }
}

class ThirdTextWidget extends StatelessWidget {
  final String text;
  const ThirdTextWidget({Key? key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blueAccent, // Изменен цвет фона контейнера
        borderRadius: BorderRadius.circular(10), // Задано скругление углов
        border: Border.all(color: Colors.black, width: 2), // Добавлены рамки
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.white), // Изменен цвет текста
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: const <Widget>[
        ThirdTextWidget(text: "1"),
        ThirdTextWidget(text: "2"),
        ThirdTextWidget(text: "3"),
        ThirdTextWidget(text: "4"),
        ThirdTextWidget(text: "5"),
        ThirdTextWidget(text: "6"),
        ThirdTextWidget(text: "7"),
        ThirdTextWidget(text: "8"),
        ThirdTextWidget(text: "9"),
        ThirdTextWidget(text: "10"),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return ThirdTextWidget(text: '$index');
      },
    );
  }
}

class GridViewCountWidget extends StatelessWidget {
  const GridViewCountWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const <Widget>[
        ThirdTextWidget(text: "1"),
        ThirdTextWidget(text: "2"),
        ThirdTextWidget(text: "3"),
        ThirdTextWidget(text: "4"),
        ThirdTextWidget(text: "5"),
        ThirdTextWidget(text: "6"),
        ThirdTextWidget(text: "7"),
        ThirdTextWidget(text: "8"),
        ThirdTextWidget(text: "9"),
        ThirdTextWidget(text: "10"),
      ],
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: GridView.extent(
        maxCrossAxisExtent: 90,
        children: const [
          ThirdTextWidget(text: "1"),
          ThirdTextWidget(text: "2"),
          ThirdTextWidget(text: "3"),
          ThirdTextWidget(text: "4"),
          ThirdTextWidget(text: "5"),
        ],
      ),
    );
  }
}

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return ThirdTextWidget(text: '$index');
        },
      ),
    );
  }
}
