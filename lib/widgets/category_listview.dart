import 'package:flutter/material.dart';
import 'category_news.dart';
class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return         SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return CategoryNews();
        },itemCount:5 ,),
    );

  }
}
