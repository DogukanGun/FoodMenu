import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_menu/component/appbar/size_wrapper.dart';
import 'package:food_menu/component/appbar/appbar_state.dart';
import 'package:food_menu/component/appbar/food_appbar.dart';
import 'package:food_menu/res/color_resource.dart';
import 'package:food_menu/style/text_style.dart';
class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {

  @override
  Widget build(BuildContext context) {
    double foodListLeftPadding = 20;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Top Menu",
                style: FoodTextStyle.title,
              ),
            ),
            SizedBox(
              height: 450,
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    if(index == 0){
                      return Card(
                        shadowColor: Colors.white,
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          width: 20,
                          child: Container(),
                        ),
                      );
                    }
                    else{
                      return Card(
                        color: ColorResource.blue_color,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        child: SizedBox(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment:Alignment.bottomRight,
                                  child: IconButton(
                                      onPressed: (){},
                                      color: Colors.white,
                                      icon: Icon(Icons.favorite_outline_sharp)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Image.memory(
                                      Base64Decoder().convert(ColorResource.image),
                                      fit:BoxFit.fill
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Text("Lahmacun",style: FoodTextStyle.foodListMenuText,),
                                        Text("Old Traditional",style: FoodTextStyle.foodListMenuText,)
                                      ],
                                    )
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("24\$",style: FoodTextStyle.foodListMenuText,),
                                        IconButton(
                                            onPressed: (){},
                                            color: Colors.white,
                                            icon: const Icon(Icons.arrow_forward)
                                        )
                                      ],
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
