
import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/food_appbar.dart';

class SizeWrapper{
  static PreferredSize getAppbar(BuildContext context,FoodAppBar foodAppBar){
    double screenHeight = (MediaQuery.of(context).size.height/8);
    double screenWidth = (MediaQuery.of(context).size.width);
    return PreferredSize(
        preferredSize: Size(screenWidth, screenHeight),
        child: foodAppBar,
    );
  }
}