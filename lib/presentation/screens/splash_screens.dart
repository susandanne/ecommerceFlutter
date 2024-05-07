import 'package:ecommerceflutter/presentation/screens/home_screens.dart';
import 'package:ecommerceflutter/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}




class _splashState extends State<splash> {
  void _moveToHomeScreen()async{
    await Future.delayed(const Duration (seconds:2));
    Get.to(() => const Home());
  }
  @override
  void initState() {
    super.initState();
    _moveToHomeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          children: [
            Spacer(),
           SvgPicture.asset(AssetsPath.logoSvg,width: 100,),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 16,),
            Text('version 1.2.0'),
            SizedBox(height: 16,),
          ],
        ),
      ) ,

    );
  }
}
