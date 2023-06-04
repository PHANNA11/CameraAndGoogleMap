// 'AIzaSyBTzZVtm0j7PyCGPy7xKlHG0R5W_4dHAX0'
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePageMap extends StatefulWidget {
  const MyHomePageMap({super.key, required this.title});

  final String title;

  @override
  State<MyHomePageMap> createState() => _MyHomePageMapState();
}

class _MyHomePageMapState extends State<MyHomePageMap> {
  final Completer<GoogleMapController> _controller = Completer();
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
