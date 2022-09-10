
import 'appbar_state.dart';
import 'general_appbar_state.dart';

class AppbarController{

  void deleteLeftButton(){
    GeneralAppbarState.appbarState.leftButton = [];
  }

  void deleteRightButton(){
    GeneralAppbarState.appbarState.rightButton = [];
  }

  void changeLeftButton(AppbarButton appbarButton){
    GeneralAppbarState.appbarState.leftButton = [appbarButton];
  }

  void changeRightButton(AppbarButton appbarButton){
    GeneralAppbarState.appbarState.rightButton = [appbarButton];
  }

  void addLeftButton(AppbarButton appbarButton){
    GeneralAppbarState.appbarState.leftButton.add(appbarButton);
  }

  void addRightButton(AppbarButton appbarButton){
    GeneralAppbarState.appbarState.rightButton.add(appbarButton);
  }
}