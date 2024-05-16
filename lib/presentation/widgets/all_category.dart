import 'package:flutter/material.dart';

class CategoryHeader extends StatefulWidget {
  const CategoryHeader({
    super.key, required this.title, required this.ontapcategory,
  });
  final String title;
  final VoidCallback ontapcategory;

  @override
  State<CategoryHeader> createState() => _CategoryHeaderState();
}

class _CategoryHeaderState extends State<CategoryHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title,style: TextStyle(fontSize:20 ),),
        TextButton(
          onPressed:widget.ontapcategory,
          child: Text(
            'see all',
            style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}