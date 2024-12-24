import 'package:dio/dio.dart';
import 'package:news_cloud/Models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);


 Future<List<ArticleModel>> getNews({required String category}) async{
   try {
     var response = await dio.get(
         'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');
     
     Map<String, dynamic> jsonData = response.data;
     
     List<dynamic> articles = jsonData['articles'];
     
     List<ArticleModel> articlesList = [];
     
     
       for (var article in articles) {
     
         ArticleModel articleModel = ArticleModel.fromJson(article);
         articlesList.add(articleModel);
     
       }
       return articlesList;
   } catch (e) {
     return [];
   }

   }


  // void getGeneralNews() async {
  //   final response = await dio.get(
//   'https://newsapi.org/v2/everything?q=bitcoin&apiKey=7f975dd700fa4200809d0433b3c4eb3a');
  //   print("response$response");
  //
  // }
  //
  // void getSportNews() async {
  //   final response = await dio.get('https://newsapi.org/v2/top-headlines?&apiKey=7f975dd700fa4200809d0433b3c4eb3a');
  //   print("response$response");
  //
  // }


}