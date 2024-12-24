import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../category/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal:
            16.0),
             sliver: NewsListViewBuilder(
              category: category,
            ),
          ),
        ],
      ),
    );
    }
  
}
  