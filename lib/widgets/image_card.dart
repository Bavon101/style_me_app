import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:style_me_app/utils/app_utils.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          child: !AppUtils.isHttpUri(imageUrl) && !kIsWeb
              ? Image.file(
                  File(imageUrl),
                  fit: BoxFit.cover,
                )
              : Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}