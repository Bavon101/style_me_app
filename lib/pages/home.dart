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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppUtils.appDescription,
              textAlign: TextAlign.center,
            ),
             if(context.watch<ImageHandler>().image!= null)
               ImageCard(imageUrl: context.read<ImageHandler>().image!.path),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  =>  context.read<ImageHandler>().promptImageSelection(),
        tooltip: 'add image',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
