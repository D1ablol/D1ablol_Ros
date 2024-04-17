import 'package:flutter/material.dart';
import 'package:ros_Alibek/examples/theme/ui/BAppBar.dart';
import 'package:ros_Alibek/examples/theme/utils/theme.dart';

class ExampleTheme extends StatelessWidget {
  const ExampleTheme({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'Custom Theme',
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 24, color: const Color.fromARGB(255, 240, 102, 102)), 
        ),
      ),
      body: const ListWidget(),
      bottomNavigationBar: const BAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10), 
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return (index == 14)
            ? Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {},
                  child: const Text("Load More", style: TextStyle(color: Colors.white)), 
                ),
              )
            : Card(
                child: ListTile(
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey, 
                  ),
                  title: Text(
                    'Header $index',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(color: const Color.fromARGB(221, 75, 219, 238)),
                  ),
                  subtitle: Text(
                    'Description text $index',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: const Color.fromARGB(137, 245, 237, 237)), 
                  ),
                ),
              );
      },
    );
  }
}
