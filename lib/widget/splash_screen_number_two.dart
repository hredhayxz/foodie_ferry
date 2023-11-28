import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/splash_screen_3.dart';
import '../view/utils/image_urls.dart';

class SplashScreenNumberTwo extends StatelessWidget {
  const SplashScreenNumberTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            ImagePath.splashScreen2,
            height: 435,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Text(
            "     Select the \nFavorities Menu",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Now eat well, don't leave the house,You can \n       choose your favorite food only with \n                               one click",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF3B3B3B),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 55,
            width: 157,
            decoration: BoxDecoration(
                color: const Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF0000)),
                onPressed: () {
                  Get.to(() => const SplashScreenThree());
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}