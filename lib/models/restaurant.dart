import 'dart:core';

import 'package:menu_app/models/food.dart';

class Restaurant {
  String name = "";
  String waitTime = "";
  String distance = "";
  String label = "";
  String logoUrl = "";
  String desc = "";
  late num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Restaurant generateRestaurant() {
    return Restaurant(
      'Restaurant',
      '20-30 min',
      '2.4km',
      'Restaurant',
      'assets/res_logo.png',
      'Orange sandwiches is delicious',
      4.7,
      {
        'Recommend': Food.generateRecommendFood(),
        'Popular': Food.generatePopularFoods(),
        'Noodle': [],
        'Pizza': [],
      },
    );
  }
}
