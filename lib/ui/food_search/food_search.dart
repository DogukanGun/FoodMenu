import 'package:flutter/material.dart';

class FoodSearch extends StatefulWidget {

  String foodName;

  FoodSearch({Key? key,required this.foodName}) : super(key: key);

  @override
  State<FoodSearch> createState() => _FoodSearchState();
}

class _FoodSearchState extends State<FoodSearch> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.foodName),
    );
  }
}
