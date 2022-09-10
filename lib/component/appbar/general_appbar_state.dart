
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/appbar_state.dart';

class GeneralAppbarState{

  static VoidCallback menuButtonOnPress = (){};
  static VoidCallback searchButtonOnPress = (){};
  static VoidCallback shopButtonOnPress = (){};
  static bool showSearchButton = false;
  static List<AppbarButton> defaultLeftButtons = [
    AppbarButton(
      onPressed: menuButtonOnPress,
      appbarButtonType: AppbarButtonType.menu,
    ),
    AppbarButton(
      onPressed: shopButtonOnPress,
      appbarButtonType: AppbarButtonType.shop,
    )
  ];
  static List<AppbarButton> defaultRightButtons = [
    AppbarButton(
      onPressed: searchButtonOnPress,
      appbarButtonType: AppbarButtonType.search,
    )
  ];

  static AppbarState appbarState = AppbarState(
      leftButton: defaultLeftButtons,
      rightButton: defaultRightButtons
  );
}