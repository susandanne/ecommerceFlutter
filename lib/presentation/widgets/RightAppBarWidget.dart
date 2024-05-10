import 'package:flutter/material.dart';

class RightAppbaabarIcon extends StatelessWidget {
  const RightAppbaabarIcon({
    super.key, required this.icon, required this.ontapaction,
  });
  final IconData icon;
  final VoidCallback ontapaction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius:BorderRadius.circular(2) ,
        onTap: ontapaction,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ));
  }
}