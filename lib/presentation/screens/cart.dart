import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      //for Willpopscope
      // onWillPop: () async {
      //   Get.find<MainNavControllers>().backToHome();
      //   ret, child: null,urn false;
        canPop:false ,
       onPopInvoked:(_) {
      Get.find<MainNavControllers>().backToHome();
    },


      child: Scaffold(
        appBar: AppBar(
          title: Text('cart list'),
          leading: IconButton(
            onPressed: () {
              Get.find<MainNavControllers>().backToHome();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
