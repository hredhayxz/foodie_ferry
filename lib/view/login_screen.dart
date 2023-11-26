import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key:_formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Icon(Icons.lock,size: 150,color: Colors.grey,),
                  const SizedBox(height: 30),
                  const Text("Get Started with",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),

                  const SizedBox(height: 20,),

                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter Your Email Address";
                      }
                      return null;
                    },
                    controller: _emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Enter your email",
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.teal,),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "please Enter your password";
                      }
                      return null;
                    },
                    controller: _passwordEditingController,
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.lock_clock_outlined,color: Colors.teal,),
                        suffixIcon: InkWell(
                          onTap: (){
                            isHiddenPassword =! isHiddenPassword;
                            setState(() {});
                          },
                          child: isHiddenPassword == true ?
                          const Icon(Icons.visibility_off):const Icon(Icons.visibility),
                        )
                    ),
                  ),

                  const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                    onPressed: (){},
                    child: const Icon(Icons.arrow_circle_right_outlined,color:Colors.white,size: 30,)
                ),
              ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have account?",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5
                      ),),

                      TextButton(onPressed: (){},
                        child: const Text("Sing up",style: TextStyle(
                          fontSize: 18,
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}