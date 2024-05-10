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
      home: splash(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.primarycolor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.primarycolor,
        ),
        textTheme: TextTheme(
            titleLarge: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primarycolor)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primarycolor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primarycolor)),
            errorBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              padding: EdgeInsets.all(4),
              foregroundColor: Colors.blue,
              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              backgroundColor: AppColors.primarycolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
        )
      ),
    );
  }
}
