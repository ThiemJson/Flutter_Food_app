import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_food_app/fake_date.dart';
import './models/category.dart';
import './models/food.dart';
class FoodsPage extends StatelessWidget {
  static const String routeName ='/FoodsPage';
  Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods = FAKE_FOOD.where((food) => food.categoryID == this.category.id).toList() ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Food from Category', style: TextStyle(fontFamily: 'Itim', fontSize: 26),),
      ),
      body: Center(
        child: GridView(
          padding: EdgeInsets.all(12),
          children: foods.map(
                  (food) =>Card(
                    elevation: 12,
                    color: this.category.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Image.network(food.urlName, fit: BoxFit.cover,),
                        title: Text(food.name, style: TextStyle(fontFamily: 'Itim', color: Colors.white),),
                      ),
                    )
                  )
          ).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3/2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12
          ),
        ),
      ),
    );
  }
}
