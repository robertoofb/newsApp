import 'package:flutter/cupertino.dart';
import 'package:news_cloud/Models/category_model.dart';
import 'package:news_cloud/category/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key });

   List<CategoryModel>categories=[
    CategoryModel(imageAssetUrl: "assets/business.avif", categoryName: "business"),
     CategoryModel(imageAssetUrl: "assets/general.avif", categoryName: "general"),
     CategoryModel(imageAssetUrl: "assets/health.avif", categoryName: "health"),
     CategoryModel(imageAssetUrl: "assets/science.avif", categoryName: "science"),
     CategoryModel(imageAssetUrl: "assets/sports.avif", categoryName: "sports"),

   ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount:categories.length,
          itemBuilder:
          (context,index){
            return  CategoryCard(categoryModel:categories[index],);

        }
          ),
    );
  }
}
