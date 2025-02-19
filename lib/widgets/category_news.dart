import 'package:flutter/material.dart';
class CategoryNews extends StatelessWidget {
  const CategoryNews({super.key});

  @override
  Widget build(BuildContext context) {
    return          Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.teal,
        radius:55 ,
        backgroundImage: NetworkImage("https://media.istockphoto.com/id/502301173/photo/sports-heroes.jpg?s=612x612&w=0&k=20&c=Iski7j6mRgkYSlYF1EwBr9ClnDw2Z9SBVWukzLp9RB0="),
        child: Text("General",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold ,
                color: Colors.black87
            )),

      ),
    );

  }
}
