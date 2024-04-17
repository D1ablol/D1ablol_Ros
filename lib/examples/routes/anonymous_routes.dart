import 'package:flutter/material.dart';
import 'package:ros_Alibek/examples/routes/theme.dart';

class AnonymousRoutes extends StatelessWidget {
  const AnonymousRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: basicTheme(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous Routes'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp13touch-space-select-202005?wid=904&hei=840&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1587460552755',
              width: 200,
            ),
            ElevatedButton(
              child: const Text('Подробнее'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DetailScreen();
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
                    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp13touch-space-select-202005?wid=904&hei=840&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1587460552755',
                    width: 300,
                  ),
                  const ListTile(

                    title: Text('Pro Display XDR'),
                    subtitle: Text(
                        '32-inch Retina 6K. Astonishing color accuracy. Superwide viewing angle. And Extreme Dynamic Range.'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: const Text('Назад'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
