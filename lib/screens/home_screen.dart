import 'package:flutter/material.dart';
import 'package:newss_app/widgets/article_listView.dart';
import 'package:newss_app/widgets/category_listview.dart';
import 'package:newss_app/widgets/category_news.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child:
          CategoryListview(),),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8.0),
              child: Text("General News",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold ,
                      color: Colors.black87
                  )),
            ),
          ),
          ArticleListview(),



        ],),
    );


  }
}