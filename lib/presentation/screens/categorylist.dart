import 'package:ecommerceflutter/presentation/stateControllers/MainNavControllers.dart';
import 'package:ecommerceflutter/presentation/widgets/categoryitem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return  PopScope(
      canPop: false,
      onPopInvoked:(_){
        Get.find<MainNavControllers>().backToHome();
      } ,
      child: Scaffold(
        appBar: AppBar(
          title: Text('category list'),
          leading: IconButton(
            onPressed: () {
              Get.find<MainNavControllers>().backToHome();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),itemCount: 12,
            itemBuilder:(context,index){
         return Padding(
       padding: const EdgeInsets.all(8.0),
       child: FittedBox(child: CategoryItem()),
         );
        }),
      ),
    );
  }
}
