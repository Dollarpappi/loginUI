import 'package:flutter/material.dart';
import 'package:responsivelogin/widget/login_feild.dart';
import 'package:responsivelogin/widget/social_button.dart';

class MyHompage extends StatelessWidget {
  const MyHompage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/assets/signin_balls.png"),
              const Text("Sign in", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),),
              const SizedBox(
                height: 50,
              ),
             const SocialButton(
                iconPath: "assets/assets/g_logo.svg", 
                text: "Continue with Google",
                ),
                const SizedBox(height: 15,),
                  const SocialButton(
                iconPath: "assets/assets/f_logo.svg", 
                text: "Continue with Meta",
                horizontalPadding: 90,
                ),
                 const SizedBox(height: 15,),
                 const Text("Or", style: TextStyle(fontSize: 17),),
                 const SizedBox(height: 15,),
                 const  LoginFeild(hint: "Email"),
                 const SizedBox(height: 15,),
                 const LoginFeild(hint: "Password"),
                 const SizedBox(height: 20,)
                 
            ],
          ),
        ),
      ),
    );
  }
}