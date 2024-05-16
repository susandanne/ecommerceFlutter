import 'package:get/get_state_manager/get_state_manager.dart';

class MainNavControllers extends GetxController{
  int _selectedIndex=0;
  int get getSelectedIndex=>_selectedIndex;
   void changeIndex(int index){
     _selectedIndex=index;
     update();
   }
  void backToHome(){
    changeIndex(0);
  }
}