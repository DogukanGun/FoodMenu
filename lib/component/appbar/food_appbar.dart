import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/appbar_state.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FoodAppBar extends StatefulWidget {

  AppbarState appbarState;

  FoodAppBar({Key? key,required this.appbarState}) : super(key: key);

  @override
  State<FoodAppBar> createState() => _FoodAppBarState(appbarState: appbarState);
}

class _FoodAppBarState extends State<FoodAppBar> {

  AppbarState appbarState;

  _FoodAppBarState({required this.appbarState});

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: getLeftButtons()),
          Row(children: getRightButtons())
        ],
      ),
    );
  }
}
