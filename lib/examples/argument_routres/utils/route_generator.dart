import 'package:flutter/material.dart';
import '../onGenerateRoute.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name?.split('/');

    if (path![1] == "details") {
      return MaterialPageRoute(
        builder: (context) => DetailScreen(id: int.parse(path[2])),
      );
    }

    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    );
  });
}
