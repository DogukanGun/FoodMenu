import 'package:flutter/material.dart';
import 'package:food_menu/component/appbar/general_appbar_state.dart';
import 'package:food_menu/style/text_style.dart';
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
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _key,
        appBar: SizeWrapper.getAppbar(
            context,
            FoodAppBar()
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Pizza',style: FoodTextStyle.foodListMenuTextBlack,),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Hamburger',style: FoodTextStyle.foodListMenuTextBlack,),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset : false,
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [],
            body: pageList[_selectedIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),

          ],
        ),
    );
  }

  @override
  void initState() {
    super.initState();
    menuButtonOnPressed();
    searchButtonOnPress();
    shopButtonOnPressed();
  }

  void menuButtonOnPressed(){
    GeneralAppbarState.menuButtonOnPress = (){
      if(pageList[_selectedIndex] is FoodList){
        _key.currentState!.openDrawer();
      }
    };
  }

  void shopButtonOnPressed(){
    GeneralAppbarState.shopButtonOnPress = (){
      Navigator.of(context).pushNamed(
          "/Shop");
    };
  }

  void searchButtonOnPress(){
    GeneralAppbarState.searchButtonOnPress = (){
      setState(() {
        GeneralAppbarState.showSearchButton = true;
      });
    };
  }

  void _onItemTapped(int index) {

    setState(() {
      if(GeneralAppbarState.showSearchButton){
        GeneralAppbarState.showSearchButton = false;
      }
      _selectedIndex = index;
    });
  }
}
