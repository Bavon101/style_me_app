import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_me_app/utils/app_utils.dart';
import 'package:style_me_app/widgets/image_card.dart';

import '../providers/image_handler.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Style Me"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Text(
              AppUtils.introWelcome,
              style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
            Text(
              AppUtils.appDescription,
          
            ),
            const SizedBox(
              height: 20,
            ),
             Align(
              alignment: Alignment.topLeft,
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {},
                child: const Text('Style Me'),
                         ),
             ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: AppUtils.homeImages.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) , itemBuilder: (_,i)=> ImageCard(imageUrl: AppUtils.homeImages[i]) ),
            if (context.watch<ImageHandler>().image != null)
              ImageCard(imageUrl: context.read<ImageHandler>().image!.path),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ImageHandler>().promptImageSelection(),
        tooltip: 'add image',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
