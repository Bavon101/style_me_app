import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:style_me_app/utils/app_utils.dart';
import 'package:http/http.dart' as http;

class ImageHandler with ChangeNotifier {
  final ImagePicker picker = ImagePicker();
  File? _image;

  File? get image => _image;

  bool _loading = false;

  bool get loading => _loading;

  set loading(bool newLoading) {
    _loading = newLoading;
    notifyListeners();
  }

  set image(File? newImage) {
    _image = newImage;
    notifyListeners();
  }

  void getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      await makeApiGenerationcall();
      return;
    }
    final context = AppUtils.navigatorKey.currentContext;
    ScaffoldMessenger.of(context!).showSnackBar(
      const SnackBar(
        content: Text("No image selected"),
      ),
    );
  }

  void promptImageSelection() {
    final context = AppUtils.navigatorKey.currentContext;
    showModalBottomSheet(
      context: context!,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (!kIsWeb)
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

  Future<void> makeApiGenerationcall() async {
    if (image == null) {
      throw Exception("No image selected");
    }
    loading = true;
    final context = AppUtils.navigatorKey.currentContext;
    ScaffoldMessenger.of(context!).showSnackBar(
      const SnackBar(
        content: Text("Generating Image"),
      ),
    );
    final url = Uri.parse('https://api.deepai.org/api/text2img');

    // pass the selected file to the request
    final request = http.MultipartRequest('POST', url);

    request.files.add(http.MultipartFile(
        'image', image!.readAsBytes().asStream(), image!.lengthSync(),
        filename: image!.path.split("/").last));
    final response = await request.send();
    if (response.statusCode != 200) {
      loading = false;
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Error generating image"),
        ),
      );
      return;
    }

    final respStr = await response.stream.bytesToString();

    log("Response: $respStr");
     
    loading = false;
  }
}
