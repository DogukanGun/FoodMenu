import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_menu/component/incrementbutton/increment_button.dart';
import 'package:food_menu/component/likebutton/like_button.dart';

import '../../res/color_resource.dart';
import '../../style/text_style.dart';
import 'food.dart';

class FoodCard extends StatefulWidget {
  final Food food;

  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.food.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: LikeButton(voidCallback: (){
                  widget.food.isLiked = !widget.food.isLiked;
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Image.memory(
                    const Base64Decoder().convert(ColorResource.image),
                    fit: BoxFit.fill),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.food.name,
                    style: FoodTextStyle.foodListMenuTextWhite,
                  ),
                  Text(
                    "Old Traditional",
                    style: FoodTextStyle.foodListMenuSubTextWhite,
                  )
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.food.price}\$",
                    style: FoodTextStyle.foodListMenuTextWhite,
                  ),
                  // IconButton(
                  //     onPressed: () {},
                  //     color: Colors.white,
                  //     icon: const Icon(Icons.arrow_forward))
                  const IncrementButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
