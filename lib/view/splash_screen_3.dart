import 'package:flutter/material.dart';
import 'package:foodie_ferry/view/utils/image_urls.dart';

class SplashScreenThree extends StatefulWidget {
  const SplashScreenThree({super.key});

  @override
  State<SplashScreenThree> createState() => _SplashScreenThreeState();
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 55,),
                Image.asset(ImagePath.splashScreen3,height: 385,width: double.infinity,fit: BoxFit.cover,),
                const Text("Good food at a \n   cheap price",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),),
                const SizedBox(height: 20,),
                const Text("You can eat at expensive \n        restaurants with \n         affordable price",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3B3B3B),
                ),),
                const SizedBox(height: 42,),
                Container(
                  height: 55,
                  width: 157,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF0000),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF0000)
                      ),
                      onPressed: (){}, child: const Text(
                    "Next",style: TextStyle(color:Colors.white),
                  )),
                )
              ],
            ))
    );
  }
}
