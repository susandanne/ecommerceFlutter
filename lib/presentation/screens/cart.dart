import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:ecommerceflutter/presentation/widgets/cartDetailsWidget.dart';
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
      canPop: false,
      onPopInvoked: (_) {
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
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CartBody();
                    })),
            checkout()
          ],
        ),
      ),
    );
  }

  Widget checkout() {
    return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primarycolor.withOpacity(.1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
                    Text('\$200',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ],
                ),
                SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('checkout')))
              ],
            ),
          );
  }
}
