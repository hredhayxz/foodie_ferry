import 'package:flutter/material.dart';

import '../../../widget/custom_button.dart';
import '../../utils/image_urls.dart';

class CustomerRegistrationScreen extends StatefulWidget {
  const CustomerRegistrationScreen({super.key});

  @override
  State<CustomerRegistrationScreen> createState() => _CustomerRegistrationScreenState();
}

class _CustomerRegistrationScreenState extends State<CustomerRegistrationScreen> {

  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final TextEditingController fullNameEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text("Full Name",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                ),
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your full name";
                    }
                    return null;
                  },
                  controller: passwordEditingController,
                  decoration: const InputDecoration(
                    hintText: "Enter your full name",
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text("Email",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                ),
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your full name";
                    }
                    return null;
                  },
                  controller: emailEditingController,
                  decoration: const InputDecoration(
                    hintText: "Enter the email",
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text("Password",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                ),
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter the password";
                    }
                    return null;
                  },
                  controller: passwordEditingController,
                  decoration: const InputDecoration(
                    hintText: "Enter your password",
                  ),
                ),

                const SizedBox(height: 36,),
                Center(child: CustomButton(
                    onTab: (){
                  if(_formKey.currentState!.validate()){

                  }
                }, width: 256, text: "Sing Up")),
                const SizedBox(height: 22,),
                Center(
                  child: Container(
                    height: 52,
                    width: 256,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4F4F4),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF4F4F4),
                        ),
                        onPressed: (){}, child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 10,backgroundImage: AssetImage(ImagePath.googleLogo,),),
                        SizedBox(width: 20,),
                        Text("Sing up with Google",style: TextStyle(color: Color(0xFF222222)),)
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
