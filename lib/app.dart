import 'package:ecommerceflutter/presentation/screens/splash_screens.dart';
import 'package:flutter/material.dart';

class Craftify extends StatefulWidget {
  const Craftify({super.key});

  @override
  State<Craftify> createState() => _CraftifyState();
}

class _CraftifyState extends State<Craftify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:splash(),
    );
  }
}
