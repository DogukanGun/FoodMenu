
import 'package:flutter/material.dart';

class AppbarState {
  List<AppbarButton> leftButton;
  List<AppbarButton> rightButton;

  AppbarState({required this.leftButton,required this.rightButton});

}

class AppbarButton{
  VoidCallback onPressed;
  AppbarButtonType appbarButtonType;

  AppbarButton({required this.onPressed,required this.appbarButtonType});
}

enum AppbarButtonType{
  search("asset/search.svg"),
  back("asset/back.svg"),
  shop("asset/shopping_bag.svg"),
  menu("asset/menu.svg");

  const AppbarButtonType(this.value);
  final String value;
}