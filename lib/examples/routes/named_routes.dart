import 'package:flutter/material.dart';
import 'package:ros_Alibek/examples/routes/theme.dart';

class NamedRoutes extends StatelessWidget {
  const NamedRoutes({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Routes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/pro-display-gallery1-201909?wid=6000&hei=4608&fmt=jpeg&qlt=90&.v=1574201024213',
              width: 450, 
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
              child: const Text('Подробнее'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Подробная информация'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/pro-display-gallery1-201909?wid=6000&hei=4608&fmt=jpeg&qlt=90&.v=1574201024213',
                    width: 600, 
                  ),
                  const ListTile(
                    title: Text('Buy Pro Display XDR'),
                    subtitle:
                        Text('32-inch Retina 6K. Astonishing color accuracy. Superwide viewing angle. And Extreme Dynamic Range.'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
