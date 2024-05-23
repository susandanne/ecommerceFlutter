
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onchange});

  final List<String> sizes;
  final Function(String) onchange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.sizes.length,
          itemBuilder: (context, index) {

            return GestureDetector(
              onTap:(){

                selectedIndex=index;
                widget.onchange(widget.sizes[index]);
                setState(() {

                });
              } ,
              child: Container(
                margin:EdgeInsets.only(right: 5),
                padding: EdgeInsets.all(10),
                height: 40,width: 40,
                decoration: BoxDecoration(
                  color: GetSelecetedBackGroundColor(index==selectedIndex),
                     borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: GetSelecetedTextColor(index==selectedIndex)
                  )
                ),
                child: FittedBox(
                  child: Text(
                    widget.sizes[index],
                    style: TextStyle(color: GetSelecetedTextColor(index==selectedIndex),fontSize:20 ),
                  ),
                ),
              ),



            );
          }),
    );
  }
  Color GetSelecetedTextColor(bool Isselected){
    return Isselected ? Colors.blue :Colors.grey;
  }
  Color GetSelecetedBackGroundColor(bool Isselected){
    return Isselected ? AppColors.primarycolor :Colors.transparent;
  }
}