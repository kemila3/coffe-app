import 'package:coffee_shop/pages/landingPage.dart';
import 'package:coffee_shop/themes/themes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}