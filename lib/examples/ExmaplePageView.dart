import 'package:flutter/material.dart';

class LinkToExamplePageView extends StatelessWidget {
  const LinkToExamplePageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Переход на ExamplePageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('PageViewWidget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageViewWidget()),
                );
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text('PageViewBuilderWidget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageViewBuilderWidget()),
                );
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text('PageViewCustomWidget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageViewCustomWidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  PageViewWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: const Center(
            child: Text('Stop!'),
          ),
        ),
        Container(
          color: Colors.orange,
          child: const Center(
            child: Text('Ready?'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Go!', style: TextStyle(fontSize: 40),),
              ElevatedButton(
                  child: const Text('Reload'),
                  onPressed: () {
                    controller.jumpToPage(0);
                  })
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  const PageViewBuilderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        final Color backgroundColor = index % 2 == 0 ? Colors.green : Colors.red;
        return Container(
          color: backgroundColor,
          alignment: Alignment.center,
          child: TextWidget(
            text: '$index',
          ),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  const PageViewCustomWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        const Text('1'),
        const Text('2'),
        const Text('3'),
      ]),
    );
  }
}
