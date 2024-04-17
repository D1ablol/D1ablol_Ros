import 'package:flutter/material.dart';

class ExampleStackPositionedIndexedStack extends StatelessWidget {
  const ExampleStackPositionedIndexedStack({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            StackWidget(),
            PositionedWidget(),
            IndexedStackWidget(),
          ],
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: <Widget>[
        BackgroundImage(),
        AboutSpeaker(),
        HeartIcon(),
      ],
    );
  }
}

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: <Widget>[
        BackgroundImage(),
        Positioned(
          top: 490,
          child: AboutSpeaker(),
        ),
        Positioned(
          right: 60,
          top: 500,
          child: HeartIcon(),
        ),
      ],
    );
  }
}

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({Key? key});

  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _index = 0;
  double size = 100.0;

  void _switchLayout() {
    if (_index != 2) {
      setState(() {
        _index++;
        size += 100.0;
      });
    } else {
      setState(() {
        _index = 0;
        size = 50.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            index: _index,
            children: [
              AnimatedSquare(size, Colors.redAccent),
              AnimatedSquare(size, Colors.orangeAccent),
              AnimatedSquare(size, Colors.greenAccent),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              _switchLayout();
            },
            child: const Text('Color Button'),
          )
        ],
      ),
    );
  }
}

class AnimatedSquare extends StatelessWidget {
  final double size;
  final Color color;

  const AnimatedSquare(this.size, this.color, {Key? key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInBack,
      duration: const Duration(seconds: 1),
      width: size,
      height: size,
      color: color,
    );
  }
}

class HeartIcon extends StatelessWidget {
  const HeartIcon({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite,
      color: Colors.red,
      size: 30,
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/speaker.jpg', fit: BoxFit.cover);
  }
}

class AboutSpeaker extends StatelessWidget {
  const AboutSpeaker({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue, width: 3), // Изменение цвета подчеркивания
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'JBL FLIP 5',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'JBL Flip 5 готов к путешествиям, куда бы вы ни отправились — будь то бассейн, пляж или даже ваш собственный задний двор. Он имеет водонепроницаемый дизайн, до 12 часов воспроизведения и встроенную громкую связь.',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
