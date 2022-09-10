import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/appbar_controller.dart';
import 'package:food_menu/component/appbar/general_appbar_state.dart';

import '../../component/appbar/appbar_state.dart';
import '../../component/appbar/food_appbar.dart';
import '../../component/appbar/size_wrapper.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({Key? key}) : super(key: key);

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SizeWrapper.getAppbar(
          context,
          FoodAppBar()
      ),
      body: Center(
        child: Column(
          children: const [
             Text("sadasdasda"),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    AppbarController().changeLeftButton(
      AppbarButton(
        onPressed: (){
          Navigator.pop(context);
        },
        appbarButtonType: AppbarButtonType.back,
      )
    );
  }
}
