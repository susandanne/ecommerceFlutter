import 'package:ecommerceflutter/presentation/widgets/populer_products.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key, required this.categoryName});

  final String categoryName;
  @override
  State<ProductList> createState() => _ProductListState();
}


class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),itemCount: 12,
          itemBuilder:(context,index){
            return FittedBox(child:PopularProducts());
          }),
    );
  }
}
