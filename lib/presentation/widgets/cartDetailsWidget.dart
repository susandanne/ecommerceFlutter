import 'package:ecommerceflutter/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  int _initValue=1;
  @override
  Widget build(BuildContext context) {
    return    Card(
      elevation: 6,
      surfaceTintColor: Colors.amber,
      margin: EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(AssetsPath.shoejpg,width: 120,),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('nike is a best product'),
                            Wrap(
                              children: [
                                Text('Color :Red'),
                                Text('Size :XL'),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(onPressed:(){}, icon: Icon(Icons.delete)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ Price '),
                      ItemCount(
                        initialValue: _initValue,
                        minValue: 0,
                        maxValue: 20,
                        decimalPlaces: 0,
                        onChanged: (value) {
                          _initValue=value as int;
                          // Handle counter value changes
                          print('Selected value: $value');
                          setState(() {

                          });

                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],

      ),

    );
  }
}
