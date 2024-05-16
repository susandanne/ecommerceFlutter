import 'package:ecommerceflutter/presentation/screens/productlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Get.to(ProductList(categoryName:'Electronics'));
      } ,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(12),
            child:Icon(Icons.desktop_windows,size: 40,color: Colors.grey,),
          ),
          Text('lbel'),
        ],
      ),
    );
  }
}