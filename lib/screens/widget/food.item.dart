import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/constans/colors.dart';
import 'package:menu_app/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(food.imgUrl, fit: BoxFit.fitWidth),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    food.desc,
                    style: TextStyle(
                      color: food.hightLight
                          ? KPrimaryColor
                          : Colors.grey.withOpacity(0.8),
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${food.price}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
