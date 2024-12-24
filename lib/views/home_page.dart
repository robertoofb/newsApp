import 'package:flutter/material.dart';
import 'package:news_cloud/category/category_list_view.dart';
import '../category/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("News",
                style: TextStyle(color:Colors.black),
              ),
              Text("Cloud",
                style: TextStyle(color:Colors.orange),
              ),
          
            ],
          
          ),
        ),
      ),
     body:Padding(
       padding:
       const EdgeInsets.symmetric(horizontal: 16),
       child: CustomScrollView(
         physics: const BouncingScrollPhysics(),
         slivers: [
           SliverToBoxAdapter(
                child:  CategoriesListView(),

           ),

        const SliverToBoxAdapter(
          child: SizedBox(
            height:32 ,
          ),
        ),
           const NewsListViewBuilder(category: 'general',)

        ],

       ),
       // child: Column(
       //   children: [
       //     CategoriesListView(), 
       //     const SizedBox(
       //       height: 16,
       //     ),
       //
       //     Expanded(
       //         child: NewsListView()),
       //   ],
       // ),
     )

      );
    }
}


