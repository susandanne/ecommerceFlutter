import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:flutter/material.dart';

class Carosel extends StatefulWidget {
  const Carosel({
    super.key,
  });

  @override
  State<Carosel> createState() => _CaroselState();
}

class _CaroselState extends State<Carosel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0,viewportFraction: 1),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 1.5),
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ));
          },
        );
      }).toList(),
    );
  }
}