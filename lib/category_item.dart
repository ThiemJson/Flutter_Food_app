import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './models/category.dart';
import 'foods_page.dart';
class CategoryItem extends StatelessWidget {
  //1 category = 1 category object
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      splashColor: Colors.deepPurple,
      child: Container(
        child: Container(
          child: Center(child: Text(category.content, style: TextStyle(color: Colors.white,fontSize: 40, fontFamily: 'Sunshiney') )),
          decoration: BoxDecoration(
            color: this.category.color,
            borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
      onTap: (){
        print("Tapped to catogery item: ${this.category.content}");
        /*Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FoodsPage(category: this.category,)
          )
        );*/
        Navigator.pushNamed(context, '/FoodsPage',arguments: {'category': category});
      },
    );
  }
}
