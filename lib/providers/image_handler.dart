import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:style_me_app/utils/app_utils.dart';

class ImageHandler with ChangeNotifier {
  final ImagePicker picker = ImagePicker();
  File? _image;
  File? get image => _image;

  set image(File? newImage) {
    _image = newImage;
    notifyListeners();
  }

  void getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      return;
    }
    final context = AppUtils.navigatorKey.currentContext;
    ScaffoldMessenger.of(context!).showSnackBar(
      const SnackBar(
        content: Text("No image selected"),
      ),
    );
  }

  void promptImageSelection(){
     final context = AppUtils.navigatorKey.currentContext;
    showModalBottomSheet(
      context: context!,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
              onTap: () {
                getImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Gallery'),
              onTap: () {
                getImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
