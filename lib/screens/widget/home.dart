import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/constans/colors.dart';
import 'package:menu_app/models/restaurant.dart';
import 'package:menu_app/screens/widget/food_list.dart';
import 'package:menu_app/screens/widget/food_list_View.dart';
import 'package:menu_app/screens/widget/restaurant_info.dart';
import 'package:menu_app/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: KBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                      color: KPrimaryColor,
                      padding: 2,
                      width: 2,
                    )),
              ),
              onDotClicked: ((index) => pageController.jumpToPage(index)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: KPrimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
