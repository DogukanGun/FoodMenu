import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/appbar_state.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_menu/component/appbar/general_appbar_state.dart';
import 'package:food_menu/ui/food_search/food_search.dart';


class FoodAppBar extends StatefulWidget {


  FoodAppBar({Key? key}) : super(key: key);

  @override
  State<FoodAppBar> createState() => _FoodAppBarState();
}

class _FoodAppBarState extends State<FoodAppBar> {

  AppbarState appbarState = GeneralAppbarState.appbarState;

  @override
  Widget build(BuildContext context) {

    List<TextButton> getLeftButtons(){
      var leftButtonList = <TextButton>[];
      for(var index=0;index<appbarState.leftButton.length;index++){
        var appbarButton = appbarState.leftButton[index];
        leftButtonList.add(
          TextButton(
              onPressed: appbarButton.onPressed,
              child: SizedBox(
                width: 20,
                child: SvgPicture.asset(
                    appbarButton.appbarButtonType.value,
                    color: Colors.black,
                ),
              )
          )
        );
      }
      return leftButtonList;
    }

    List<TextButton> getRightButtons(){
      var leftButtonList = <TextButton>[];
      for(var index=0;index<appbarState.rightButton.length;index++){
        var appbarButton = appbarState.rightButton[index];
        leftButtonList.add(
            TextButton(
                onPressed: appbarButton.onPressed,
                child: SizedBox(
                  width: 20,
                  child: SvgPicture.asset(
                      appbarButton.appbarButtonType.value,
                      color: Colors.black,
                  ),
                )
            )
        );
      }
      return leftButtonList;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 50),
      child: ((){
        if(GeneralAppbarState.showSearchButton){
          return Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20,bottom: 20),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState((){
                          GeneralAppbarState.showSearchButton = false;
                        });
                      },
                      icon: const Icon(Icons.close)
                  ),
                ),
                onSubmitted: (text){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FoodSearch(foodName: text,)));
                },
              ),
            ),
          );
        }else{
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: getLeftButtons()),
              Row(children: getRightButtons()),
            ],
          );
        }
      }())
    );
  }
}
