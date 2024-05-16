import 'package:ecommerceflutter/presentation/screens/cart.dart';
import 'package:ecommerceflutter/presentation/screens/categorylist.dart';
import 'package:ecommerceflutter/presentation/screens/home_screens.dart';
import 'package:ecommerceflutter/presentation/screens/wishlist.dart';
import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}
final MainNavControllers _mainNavControllers=Get.find<MainNavControllers>();
List<Widget> screens=[
  Home(),
  CategoryList(),
  Cart(),
  WishList()


];

class _BottomNavState extends State<BottomNav> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: GetBuilder<MainNavControllers>(
       builder:(_){
         return screens[_mainNavControllers.getSelectedIndex];
       } ,
     ),
      bottomNavigationBar: GetBuilder<MainNavControllers>(

        builder: (_) {
          return BottomNavigationBar(
            selectedItemColor: AppColors.primarycolor,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _mainNavControllers.getSelectedIndex,
            onTap: _mainNavControllers.changeIndex
            ,
            items: [
              BottomNavigationBarItem(icon:Icon(Icons.home),label:'home'),
              BottomNavigationBarItem(icon:Icon(Icons.category),label:'category'),
              BottomNavigationBarItem(icon:Icon(Icons.add_shopping_cart),label:'cart'),
              BottomNavigationBarItem(icon:Icon(Icons.favorite),label:'wishlist'),
            ],
          );
        }
      )
    );
  }
}
