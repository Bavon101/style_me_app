import 'package:flutter/material.dart';
import 'package:style_me_app/utils/app_utils.dart';
import 'package:style_me_app/widgets/category_card.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              const Text("Style by Category", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              
              ),),
              const Spacer(),
               TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                label: const Icon(Icons.arrow_forward) ,
                icon: const Text('Browse all categories') ,
              ),


            ],
          ),

          Row(
            children: [
              Expanded(child: CategoryCard(category: AppUtils.categories.first)),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CategoryCard(category: AppUtils.categories[1]),
                 CategoryCard(category: AppUtils.categories[2])
      
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}