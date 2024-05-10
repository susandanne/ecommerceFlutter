import 'package:ecommerceflutter/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Applogo extends StatefulWidget {
  const Applogo({
    super.key,
  });

  @override
  State<Applogo> createState() => _ApplogoState();
}

class _ApplogoState extends State<Applogo> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetsPath.logoSvg,width: 100,);
  }
}