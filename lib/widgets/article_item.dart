import 'package:flutter/material.dart';
import 'package:newss_app/model/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article ;
  const ArticleItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                image: DecorationImage(
                  image: NetworkImage(article.image??"https://www.facebook.com/En.Error/"),
                  fit: BoxFit.fill,

                )
            ),
          ),
          SizedBox(height: 5,),
          Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
             article.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,

              )),
          Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              article.desc??"error",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ))
        ],),
    );

  }
}
