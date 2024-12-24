import 'package:flutter/material.dart';
import 'package:news_cloud/Models/article_model.dart';
import 'package:news_cloud/category/news_title.dart';
import 'package:news_cloud/category/web_view_card.dart';




class NewsListView extends StatelessWidget {
    final List<ArticleModel> articles;

    const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: articles.length,

            (context, index) {

              return Padding(
                padding: const EdgeInsets.only(bottom: 22),

                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push
                      (
                      MaterialPageRoute(
                        builder: (context) {
                          return MyWebViewCard(url: articles[index].url);
                        },
                      ),);

                  },
                  child: NewsTitle(
                    articleModel: articles[index],
                  ),
                ),
              );
            },
          ),
        );
  }



}
