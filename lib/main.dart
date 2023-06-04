import 'package:flutter/material.dart';
import 'package:test2/view/fetch_camera/camera_page.dart';
import 'package:test2/view/google_map/homepage_map.dart';
import 'package:test2/view/navigation_bar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePageMap(title: 'Flutter Google Map'),
    );
  }
}
