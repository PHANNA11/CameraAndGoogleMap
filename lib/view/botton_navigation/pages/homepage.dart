import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> images = [
    'https://cdn.shopify.com/s/files/1/0304/6273/8565/products/IMG_0207_720x.jpg?v=1679560883',
    'https://cdn.shopify.com/s/files/1/0304/6273/8565/products/IMG_0221_720x.jpg?v=1671981229',
    'https://cdn.shopify.com/s/files/1/0304/6273/8565/products/IMG_0208_900x.jpg?v=1679560805'
  ];
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        autoPlayInterval: 3000,
        initialPage: 0,
        isLoop: true,
        children: List.generate(
            images.length, (index) => buildSlideCard(images[index])));
    // return const Image(
    //     image: NetworkImage(
    //         'https://cdn.shopify.com/s/files/1/0304/6273/8565/products/IMG_0206_720x.jpg?v=1679560951'));
  }

  Widget buildSlideCard(String imageURL) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          // border: Border.all(color: Color.fromARGB(255, 167, 110, 110)),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(imageURL))),
    );
  }
}
