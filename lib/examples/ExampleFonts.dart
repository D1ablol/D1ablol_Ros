import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleFonts extends StatelessWidget {
  const ExampleFonts({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Fonts'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Roboto Regular', 
                style: TextStyle(
                  fontFamily: 'Roboto', 
                  fontWeight: FontWeight.normal, 
                  fontSize: 40,
                  color: Colors.blue, 
                ),
              ),
              const Text(
                'ShadowsInto Light', 
                style: TextStyle(
                  fontFamily: 'ShadowsInto', 
                  fontWeight: FontWeight.normal, 
                  fontSize: 40,
                  color: Colors.green, 
                ),
              ),
              Text(
                'Google font Lato', 
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontStyle: FontStyle.italic, 
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
