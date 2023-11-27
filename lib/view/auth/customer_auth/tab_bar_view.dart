import 'package:flutter/material.dart';
import 'package:foodie_ferry/view/auth/customer_auth/login_screen.dart';
import 'package:foodie_ferry/view/auth/customer_auth/registration_screen.dart';
import 'package:foodie_ferry/view/utils/image_urls.dart';

class TabBarViewScreen extends StatefulWidget {
  const TabBarViewScreen({super.key});

  @override
  State<TabBarViewScreen> createState() => _TabBarViewScreenState();
}

class _TabBarViewScreenState extends State<TabBarViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                bottom: const TabBar(
                 indicatorColor: Colors.red,
                 labelColor: Colors.red,
                 unselectedLabelColor: Color(0xFF3B3B3B),
                 tabs: [
                   Tab(text:"Create Account",),
                   Tab(text: "Login",),
                 ],
                ),
                toolbarHeight:250,
                 title: Column(
                   children: [
                     Container(
                       height: 300,
                       width: double.infinity,
                       decoration: const BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(ImagePath.splashScreen3,)
                         )
                       ),
                     ),
                     //Text("----",style: TextStyle(color: Colors.black,),)
                   ],
                 )
              ),
              body: const TabBarView(
                children: [
                 CustomerRegistrationScreen(),
                  CustomerLoginScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
