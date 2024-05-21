import 'package:ecommerceflutter/presentation/widgets/ImageCarosel.dart';

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
                ], onchange: (Color selectedColor) {})
              ],
            ),
          )
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
}

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.Colors, required this.onchange});

  final List<Color> Colors;
  final Function(Color) onchange;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 30,
      child: ListView.builder(
        primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.Colors.length,
          itemBuilder: (context, index) {

            return CircleAvatar(backgroundColor: widget.Colors[index]);
          }),
    );
  }
}
