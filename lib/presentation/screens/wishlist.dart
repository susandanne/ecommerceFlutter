import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:ecommerceflutter/presentation/widgets/populer_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return  PopScope(
      canPop: false,
      onPopInvoked: (_){
        Get.find<MainNavControllers>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('wishlist'),
          leading: IconButton(
            onPressed: () {
              Get.find<MainNavControllers>().backToHome();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),itemCount: 12,
            itemBuilder:(context,index){
              return FittedBox(child:PopularProducts(
                addtowishlist: false,
              ));
            }),
      ),
    );
  }
}
