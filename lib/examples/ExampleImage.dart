import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExampleImage extends StatelessWidget {
  const ExampleImage({Key? key});

  @override
  Widget build(BuildContext context) {
    const String assetNamePath = 'assets/images/speaker.jpg';
    const String assetNameSvg = 'assets/1713154440Warrior20b.svg';
    const String assetNameUrl = 'https://cdn.pixabay.com/photo/2023/09/17/22/25/witch-8259351_1280.jpg';

    Image imageFromAsset = Image.asset(assetNamePath, fit: BoxFit.cover);

    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    
    Image imageFromNetwork = Image.network(assetNameUrl);
    ColorFiltered changedImage = ColorFiltered(
      colorFilter: const ColorFilter.mode(Color.fromARGB(255, 0, 0, 0), BlendMode.color),
      child: imageFromNetwork,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            imageFromAsset,
            imageFromAssetSvg,
            changedImage, 
          ],
        ),
      ),
    );
  }
}
