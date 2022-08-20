// ignore_for_file: unnecessary_this

class Food {
  String imgUrl = "";
  String desc = "";
  String name = "";
  String waitTime = "";
  late num score;
  String cal = "";
  late num price;
  late num quantity;
  List<Map<String, String>> ingredients;
  String about = "";
  bool hightLight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFood() {
    return [
      Food(
          'assets/dish1.png',
          'No1. in sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noddle': 'assets/ingre1.png',
            },
            {
              'Shrimp': 'assets/ingre2.png',
            },
            {
              'Egg': 'assets/ingre3.png',
            },
            {
              'Scallion': 'assets/ingre4.png',
            },
          ],
          'traditional Japanese dish served either cold or hot and featuring thin noodles made from buckwheat flour'),
      Food(
          'assets/dish2.png',
          'Low Fat',
          'Sai Ua Samnun Phrai',
          '50 min',
          4.8,
          '325 kcal',
          18,
          0,
          [
            {
              'Noddle': 'assets/ingre1.png',
            },
            {
              'Shrimp': 'assets/ingre2.png',
            },
            {
              'Egg': 'assets/ingre3.png',
            },
            {
              'Scallion': 'assets/ingre4.png',
            },
          ],
          'traditional Japanese dish served either cold or hot and featuring thin noodles made from buckwheat flour'),
      Food(
          'assets/dish3.png',
          'Highly Recommended',
          'Ratatoulle Pata',
          '50 min',
          4.8,
          '325 Kcal',
          17,
          0,
          [
            {
              'Noddle': 'assets/ingre1.png',
            },
            {
              'Shrimp': 'assets/ingre2.png',
            },
            {
              'Egg': 'assets/ingre3.png',
            },
            {
              'Scallion': 'assets/ingre4.png',
            },
          ],
          'traditional Japanese dish served either cold or hot and featuring thin noodles made from buckwheat flour'),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/dish4.png',
          'Most Popular',
          'Tomato Checke',
          '50 min',
          4.8,
          '325 Kcal',
          14.5,
          0,
          [
            {
              'Noddle': 'assets/ingre1.png',
            },
            {
              'Shrimp': 'assets/ingre2.png',
            },
            {
              'Egg': 'assets/ingre3.png',
            },
            {
              'Scallion': 'assets/ingre4.png',
            },
          ],
          'traditional Japanese dish served either cold or hot and featuring thin noodles made from buckwheat flour'),
    ];
  }
}
