import 'package:flutter/material.dart';
import 'package:style_me_app/widgets/image_card.dart';

class StylesView extends StatelessWidget {
  const StylesView({super.key, required this.imageurls});
  final List<String> imageurls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Genarated Styles"),
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (_,i) => ImageCard(imageUrl: imageurls[i]))
    );
  }
}
