import 'package:flutter/material.dart';
import 'package:style_me_app/widgets/image_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final Map<String, String> category;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(children: [
        ImageCard(imageUrl: category['image']!),
        Positioned(
          bottom: 5,
          left: 10,
          child: Column(
          children: [
            Text(category['name']!,style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            TextButton(onPressed: () {}, child: const Text("Style now"))
          ],
        ))
      ]),
    );
  }
}