import 'package:flutter/material.dart';
import 'package:foodie_ferry/view/splash_screen_3.dart';
import 'package:foodie_ferry/view/utils/image_urls.dart';
import 'package:get/get.dart';

import '../widget/splash_screen_number_two.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
                children: [
          const SplashScreenNumberTwo(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                  const Spacer(),
                  const SizedBox(
                    width: 50,
                    height: 20,
                    child: Row(
                      children: [
                        CircleAvatar(backgroundColor: Color(0xFFE6E6E6),radius: 5,),
                        SizedBox(width: 5,),
                        CircleAvatar(backgroundColor: Colors.red,radius: 5,),
                        SizedBox(width: 5,),
                        CircleAvatar(backgroundColor: Color(0xFFE6E6E6),radius: 5,),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => const SplashScreenThree());
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFFF0000),
                      ))
                ],
              ),
            ),
          )
                ],
              ),
        ));
  }
}


