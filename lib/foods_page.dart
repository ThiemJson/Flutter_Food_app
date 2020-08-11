import 'package:flutter/material.dart';
import './models/category.dart';
class FoodsPage extends StatelessWidget {
  Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Food from Category', style: TextStyle(fontFamily: 'Itim', fontSize: 26),),
      ),
      body: Center(
        child: Text('This is show Foods: ${this.category.content}', style: TextStyle(fontSize: 30, fontFamily: 'Sunshiney'),),
      ),
    );
  }
}
