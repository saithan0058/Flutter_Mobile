import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Color.fromARGB(199, 66, 210, 239),
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("image/1.jpg"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("image/2.jpg"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("image/3.jpg"),
        ),
      ],
    );
  }
}
