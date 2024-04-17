import 'package:flutter/material.dart';

class LinkToExampleListViewPage extends StatelessWidget {
  const LinkToExampleListViewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Переход на ExampleListViewPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('ViewPage'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExampleListViewPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleListViewPage extends StatelessWidget {
  const ExampleListViewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExampleListViewPage'),
        centerTitle: true,
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          ListViewWidget(),
          ListViewBuilderWidget(),
          ListViewSeparatedWidget(),
          ListViewCustomWidget(),
        ],
      ),
    );
  }
}

class SecondTextWidget extends StatelessWidget {
  const SecondTextWidget({Key? key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(10), // скругление углов
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40, color: Colors.white), //  цвет 
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        SecondTextWidget(text: "1"),
        SecondTextWidget(text: "2"),
        SecondTextWidget(text: "3"),
        SecondTextWidget(text: "4"),
        SecondTextWidget(text: "5"),
        SecondTextWidget(text: "6"),
        SecondTextWidget(text: "7"),
        SecondTextWidget(text: "8"),
        SecondTextWidget(text: "9"),
        SecondTextWidget(text: "10"),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return SecondTextWidget(text: '$index');
      },
    );
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return SecondTextWidget(text: "$index");
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Colors.black);
      },
      itemCount: 20,
    );
  }
}

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return SecondTextWidget(text: "$index");
        },
      ),
    );
  }
}
