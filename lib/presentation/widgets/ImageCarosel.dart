import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class ImageCarosel extends StatefulWidget {
  const ImageCarosel({
    super.key,
  });

  @override
  State<ImageCarosel> createState() => _ImageCaroselState();
}

class _ImageCaroselState extends State<ImageCarosel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0,viewportFraction: 1),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
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