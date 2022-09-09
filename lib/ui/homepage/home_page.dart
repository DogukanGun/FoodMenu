import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/general_appbar_state.dart';
import 'package:food_menu/ui/food_list/food_list.dart';
import 'package:food_menu/ui/foods_menu/foods_menu.dart';

import '../../component/appbar/size_wrapper.dart';
import '../../component/appbar/appbar_state.dart';
import '../../component/appbar/food_appbar.dart';
import '../../res/color_resource.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var pageList =  [const FoodList(),const FoodsMenu()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SizeWrapper.getAppbar(
            context,
            FoodAppBar(
                appbarState: GeneralAppbarState.appbarState
            )
        ),
        backgroundColor: Colors.white,
        body: pageList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
            ),

          ],
        ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
