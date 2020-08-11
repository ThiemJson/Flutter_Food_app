import './models/category.dart';
import 'package:flutter/material.dart';
import './models/food.dart';

const FAKE_CATEGORIES = const [
  Category(id: 1, content: "Japanes Foods", color: Colors.pink),
  Category(id: 2, content: "Pizza", color: Colors.blue),
  Category(id: 3, content: "Humberger", color: Colors.amber),
  Category(id: 3, content: "Vegetable", color: Colors.blue),
  Category(id: 3, content: "Yogust and millk", color: Colors.red),
  Category(id: 3, content: "Fruits", color: Colors.indigoAccent),
  Category(id: 3, content: "Meal", color: Colors.deepOrangeAccent),
  Category(id: 3, content: "Steak", color: Colors.blueAccent),
  Category(id: 3, content: "Hot dog", color: Colors.yellow),
  Category(id: 3, content: "Bean and Rice", color: Colors.amber),
  Category(id: 3, content: "Noodles", color: Colors.blue),
  Category(id: 3, content: "Buddy", color: Colors.red),
  Category(id: 3, content: "Chicken\'s KFC", color: Colors.indigoAccent),
  Category(id: 3, content: "ChouChou", color: Colors.deepOrangeAccent),
];

var FAKE_FOOD = [
  Food(
    name: 'Sushi - 寿司',
    urlName: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    duration: Duration(minutes: 30),
    complexity: Complexity.Medium,
    ingredients: ['Sushi','Nori','Condiment'],
    categoryID: 1
  ),Food(
    name: 'Thịt chó',
    urlName: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Dog_meat_for_sale_in_a_market_in_Hanoi%2C_Vietnam_%286827793370%29.jpg/235px-Dog_meat_for_sale_in_a_market_in_Hanoi%2C_Vietnam_%286827793370%29.jpg',
    duration: Duration(minutes: 40),
    complexity: Complexity.Medium,
    ingredients: ['Mắm tôm','Hành, xả, riềng','Dog meat'],
    categoryID: 2
  ),Food(
    name: 'Bún đậu',
    urlName: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    duration: Duration(minutes: 30),
    complexity: Complexity.Medium,
    ingredients: ['Sushi','Nori','Condiment'],
    categoryID: 3
  ),Food(
    name: 'Cơm sườn',
    urlName: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    duration: Duration(minutes: 30),
    complexity: Complexity.Medium,
    ingredients: ['Sushi','Nori','Condiment'],
    categoryID: 4
  ),Food(
    name: 'Bún mắm t',
    urlName: 'https://ômupload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    duration: Duration(minutes: 30),
    complexity: Complexity.Medium,
    ingredients: ['Sushi','Nori','Condiment'],
    categoryID: 1
  ),Food(
    name: 'Sushi - 寿司',
    urlName: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    duration: Duration(minutes: 30),
    complexity: Complexity.Medium,
    ingredients: ['Sushi','Nori','Condiment'],
    categoryID: 1
  ),
];