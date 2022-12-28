import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_menu/component/appbar/appbar_controller.dart';
import 'package:food_menu/component/appbar/general_appbar_state.dart';
import 'package:food_menu/component/foodcard/food.dart';
import 'package:food_menu/component/foodcard/food_card.dart';
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
      backgroundColor: ColorResource.yellow,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Top Menu",
                  style: FoodTextStyle.titleWhite,
                ),
              ),
              SizedBox(
                height: 450,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Card(
                          elevation: 0,
                          color: ColorResource.yellow,
                          child: SizedBox(
                            width: 20,
                            child: Container(),
                          ),
                        );
                      } else {
                        return FoodCard(
                          food: Food(
                              price: 24,
                              name: "Lahmacun",
                              color: ColorResource.blue_color,
                              image: ColorResource.image,
                              isLiked: true),
                        );
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    changeLeftButton();
  }

  void changeLeftButton() {
    AppbarController().deleteLeftButton();
    for (int index = 0;
        index < GeneralAppbarState.defaultLeftButtons.length;
        index++) {
      AppbarController()
          .addLeftButton(GeneralAppbarState.defaultLeftButtons[index]);
    }
  }
}
