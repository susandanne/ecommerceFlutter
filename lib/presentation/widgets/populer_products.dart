import 'package:ecommerceflutter/presentation/screens/product_details.dart';
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:ecommerceflutter/presentation/utility/assets_path.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,this.addtowishlist=true
  });
 final bool addtowishlist;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ProductDetails());
      },
      child: Card(
        elevation: 3,
        surfaceTintColor:Colors.white,
        color:AppColors.primarycolor,
        child: SizedBox(
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // decoration: BorderRadius.all(4),
                  width: 100,
                  height: 30,
                  color: Colors.transparent,
                  child: Image.asset(AssetsPath.shoejpg,width: 50,),
                ),
                SizedBox(height: 3,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('NIKE Sports editions 2K only',
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                      maxLines: 1,),
                  ],

                ),

                Wrap(spacing:7,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('\$30', style: TextStyle(fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),),
                    Wrap(

                      children: [
                        Icon(Icons.star,size:20,color: Colors.yellow,),
                        Text('3.5',style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                    buildVisibility(),

                  ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildVisibility() {
    return Visibility(visible: addtowishlist,
                  replacement: Wrap(
                    children: [
                      Icon(Icons.delete,size:20,color: Colors.blue,),

                    ],
                  ),
                  child: Wrap(
                    children: [
                      Icon(Icons.favorite_outline,size:20,color: Colors.blue,),

                    ],
                  ),
                );
  }
}