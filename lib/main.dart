import 'package:flutter/material.dart';
import 'package:foodie_ferry/view/auth/customer_auth/tab_bar_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xFFF6F6F6)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xFFF6F6F6)),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const TabBarViewScreen(),
    );
  }
}


