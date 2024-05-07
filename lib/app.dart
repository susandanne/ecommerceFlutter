import 'package:ecommerceflutter/presentation/screens/splash_screens.dart';
import 'package:ecommerceflutter/presentation/utility/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Craftify extends StatefulWidget {
  const Craftify({super.key});

  @override
  State<Craftify> createState() => _CraftifyState();
}

class _CraftifyState extends State<Craftify> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:splash(),
      theme:ThemeData(
       colorSchemeSeed: AppColors.primarycolor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.primarycolor,
        ),
      )

    );
  }
}
