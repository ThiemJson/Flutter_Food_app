import 'package:flutter/material.dart';
import './models/category.dart';
class CategoryItem extends StatelessWidget {
  //1 category = 1 category object
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return Container(
      child: Container(
        child: Text(category.content, style: TextStyle(color: Colors),),
        decoration: BoxDecoration(
          color: this.category.color,
          /*gradient: LinearGradient(
            colors: [_color.withOpacity(0.1),_color],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),*/
        ),

      ),
    );
  }
}
