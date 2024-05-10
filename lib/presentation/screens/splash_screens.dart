import 'package:ecommerceflutter/presentation/screens/email_verifications_screens.dart';
import 'package:ecommerceflutter/presentation/screens/home_screens.dart';


import 'package:ecommerceflutter/presentation/widgets/applogo.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}




class _splashState extends State<splash> {
  void _moveToHomeScreen()async{
    await Future.delayed(const Duration (seconds:2));
    Get.off(() => const Home());
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
           Applogo(),
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


