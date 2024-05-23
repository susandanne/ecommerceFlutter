import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:ecommerceflutter/presentation/widgets/ImageCarosel.dart';
import 'package:ecommerceflutter/presentation/widgets/colorPicker.dart';
import 'package:ecommerceflutter/presentation/widgets/sizePicker.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:item_count_number_button/item_count_number_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _initValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column
                (
                children: [
                  ImageCarosel(),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            productNameandDeleteButton(),
                            buildItemCount(),
                          ],
                        ),
                        ReviewsInProduct(),
                        Text(
                          'Colors',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        ColorPicker(Colors: [
                          Colors.green,
                          Colors.red,
                          Colors.blue,
                          Colors.amber,
                          Colors.grey,
                          Colors.black,
                        ], onchange: (Color selectedColor) {}),
                        Text(
                          'Size',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizePicker(sizes: [
                          'S',
                          'M',
                          'L',
                          'XL',
                          'XXL',
                        ], onchange: (String s) {}),
                        Text(
                          'Description',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.'
                              ,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          AddtoCart()
        ],
      ),
    );
  }

  Widget productNameandDeleteButton() {
    return Expanded(
        child: Text(
      'Nike shoe 2024 best model 787865 since now',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(.3),
      ),
    ));
  }

  Widget ReviewsInProduct() {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Text(
          '3.5',
          style: TextStyle(color: Colors.blue),
        ),
        Wrap(
          children: [TextButton(onPressed: () {}, child: Text('Reviews'))],
        ),
        Wrap(
          children: [
            Icon(
              Icons.favorite_outline,
              size: 20,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildItemCount() {
    return ItemCount(
      initialValue: _initValue,
      minValue: 0,
      maxValue: 20,
      decimalPlaces: 0,
      onChanged: (value) {
        _initValue = value as int;
        // Handle counter value changes
        print('Selected value: $value');
        setState(() {});
      },
    );
  }
  Widget AddtoCart() {
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
              Text('Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
              Text('\$200',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
            ],
          ),
          SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Add to cart')))
        ],
      ),
    );
  }
}
