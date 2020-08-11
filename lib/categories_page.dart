import 'package:flutter/material.dart';
import 'package:flutter_food_app/category_item.dart';
import 'package:flutter_food_app/foods_page.dart';
import 'fake_date.dart';
class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Category',
      initialRoute: '/', //this is root
      routes: {
        '/FoodsPage':(context)=> FoodsPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
        textTheme: ThemeData.light ().textTheme.copyWith(
          subtitle1: TextStyle(
            fontSize: 25,
            fontFamily: 'Sriracha'
          ),
          subtitle2: TextStyle(
            fontSize: 25,
            fontFamily: 'Itim'
          )
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Foods Category', style: TextStyle(fontSize: 25, color: Colors.white, fontFamily:'Itim' ),),
        ),
        body: SafeArea(child: MyApp()),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES.map((eachCategory) =>CategoryItem(category: eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12
      ),
    );
  }
}
