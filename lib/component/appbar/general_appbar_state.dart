
import 'package:food_menu/component/appbar/appbar_state.dart';

class GeneralAppbarState{
  static AppbarState appbarState = AppbarState(
      leftButton: [
        AppbarButton(
            onPressed: () {

            },
            appbarButtonType: AppbarButtonType.menu,
        )
      ],
      rightButton: [
        AppbarButton(
            onPressed: () {

            },
            appbarButtonType: AppbarButtonType.search,
        )
      ]
  );
}