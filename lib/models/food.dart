import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'category.dart';
class Food{
  int id;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;

  List<String> ingredients = List<String>();

  int categoryID;

  Food({
      @required this.name,
      @required this.urlName,
      @required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryID
  }){
    //id is auto generate
    this.id = Random().nextInt(1000);
  }
}

enum Complexity{
  Simple,
  Medium,
  Hard
}