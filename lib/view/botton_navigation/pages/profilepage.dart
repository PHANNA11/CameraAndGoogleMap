import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: NetworkImage(
            'https://cdn.shopify.com/s/files/1/0304/6273/8565/products/IMG_0222_900x.jpg?v=1671981297'));
  }
}
