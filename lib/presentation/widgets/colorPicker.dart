
import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.Colors, required this.onchange});

  final List<Color> Colors;
  final Function(Color) onchange;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 30,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.Colors.length,
          itemBuilder: (context, index) {

            return GestureDetector(
              onTap:(){

                selectedIndex=index;
                widget.onchange(widget.Colors[index]);
                setState(() {

                });
              } ,
              child: CircleAvatar(backgroundColor: widget.Colors[index],
                child: selectedIndex==index ? Icon(Icons.check,color: Colors.amberAccent,) : null,
              ),
            );
          }),
    );
  }
}