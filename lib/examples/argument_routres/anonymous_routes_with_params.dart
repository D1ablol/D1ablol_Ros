import 'package:flutter/material.dart';
import './utils/theme.dart';

class Product {
  final String imageUrl;
  final String name;
  final String description;

  Product({required this.imageUrl, required this.name, required this.description});
}

class AnonymousRoutesWithParams extends StatelessWidget {
  const AnonymousRoutesWithParams({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: basicTheme(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous Routes With Params'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/pro-display-gallery1-201909?wid=6000&hei=4608&fmt=jpeg&qlt=90&.v=1574201024213',
              width: 600, 
            ),
            ElevatedButton(
              child: const Text('Подробнее'),
              onPressed: () {
                Product product = Product(
                  imageUrl:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/pro-display-gallery1-201909?wid=6000&hei=4608&fmt=jpeg&qlt=90&.v=1574201024213',
                  name: 'Pro Display XDR',
                  description:
                      'You can view full delivery details and change the quantity of items in your bag. Need some help? Contact us.(Opens in a new window) Pro Display XDR Power cord (2 m)* Apple Thunderbolt 3 Pro Cable (2 m) Polishing cloth *U.S. version shown.',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen(product: product);
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
  final Product product;
  const DetailScreen({Key? key, required this.product});

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
                    product.imageUrl,
                    width: 400, 
                  ),
                  ListTile(
                    title: Text(product.name),
                    subtitle: Text(product.description),
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
