import 'package:flutter/material.dart';
import 'package:foodie_ferry/view/splash_screen_2.dart';
import 'package:foodie_ferry/view/utils/image_urls.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  Future<void> goToNextScreen()async{
    Future.delayed( const Duration(seconds:3)).then((value){
     Get.to(()=>const SplashScreenTwo());
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 150,),
          Center(child: Image.asset(ImagePath.splashScreen1,height: 300,width: 300,fit: BoxFit.cover,)),
          const Text("Foodie Ferry",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Color(0xFFFF0000)
          ),),
          const Spacer(),
        ],
      ),
    );
  }
}
