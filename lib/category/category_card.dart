import 'package:flutter/material.dart';
import 'package:news_cloud/Models/category_model.dart';
import 'package:news_cloud/views/category_view.dart';

class CategoryCard extends StatelessWidget {
 final CategoryModel categoryModel;

  const CategoryCard({super.key, required this.categoryModel});
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
        onTap: (){
          Navigator.of(context).push
            (
            MaterialPageRoute(
                builder: (context) {
                  return CategoryView(
                    category:
                    categoryModel.categoryName,
                  );
                },
            ),);
      
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(categoryModel.imageAssetUrl)),
              borderRadius: BorderRadius.circular(12),
      
            ),
            child:  Center(child: Text(categoryModel.categoryName,
                style: const TextStyle(color: Colors.white,fontSize: 18,
                    fontWeight:FontWeight.bold)),),
          ),
        ),
    ) ;
   }

}