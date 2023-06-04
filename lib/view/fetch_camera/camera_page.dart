import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Camera'),
      ),
      body: fileImage == null
          ? const SizedBox()
          : Image(image: FileImage(File(fileImage!.path))),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 0,
          ),
          FloatingActionButton(
            onPressed: () async {
              takePhoto();
            },
            child: const Icon(Icons.camera_alt),
          ),
          FloatingActionButton(
            onPressed: () async {
              selectFromLibrary();
            },
            child: Icon(Icons.image),
          ),
        ],
      ),
    );
  }

  Future<void> selectFromLibrary() async {
    var getfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      fileImage = File(getfile!.path);
    });
  }

  Future<void> takePhoto() async {
    var getfile = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 100);
    setState(() {
      fileImage = File(getfile!.path);
    });
  }
}
