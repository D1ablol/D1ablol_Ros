import 'package:flutter/material.dart';
import './BAppBarButton.dart';

class BAppBar extends StatelessWidget {
  const BAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Color.fromARGB(255, 92, 226, 152), 
      notchMargin: 10,
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomAppBarButton(title: 'Noties', icon: Icons.folder),
            BottomAppBarButton(title: 'Archive', icon: Icons.archive),
          ],
        ),
      ),
    );
  }
}
