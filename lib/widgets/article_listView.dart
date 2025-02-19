import 'package:flutter/material.dart';
import 'package:newss_app/model/article.dart';
import 'package:newss_app/network/api_service.dart';
import 'package:newss_app/widgets/article_item.dart';
class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {
  List<Article>? x;
  @override
  void initState() {
    getNews();

    // TODO: implement initState
    super.initState();
  }
  getNews()async{
    ApiService apiService = ApiService();
     x= await apiService.getNews();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return  x == null
        ? const  SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(
      color: Colors.teal,

        )),
    )
        :
        SliverList.builder(itemBuilder: (context,index){
          return ArticleItem(article: x![index]);
        },itemCount:  x!.length,);


  }
}
