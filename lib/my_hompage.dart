import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:responsivelogin/src/singin_controller.dart';
import 'package:responsivelogin/widget/gradient_button.dart';
import 'package:responsivelogin/widget/login_feild.dart';
import 'package:responsivelogin/widget/social_button.dart';

class MyHompage extends StatefulWidget {
  const MyHompage({super.key});

  @override
  State<MyHompage> createState() => _MyHompageState();
}

class _MyHompageState extends State<MyHompage> {
  TextEditingController emailEC = TextEditingController();
  TextEditingController passwordEC = TextEditingController();
  // bool isLoading = false;
  // Future signinFunc() async {
  //   print('on signinFunc');
  //   setState(() {
  //     isLoading = true;
  //   });
  //   final response = await http.post(
  //     Uri.parse('https://nextpetbuddyapi.onrender.com/api/v1/token/'),
  //     body: {'email': emailEC.text, 'password': passwordEC.text},
  //   );

  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     print('Success');
  //     showSnackbar(Colors.green, 'Success');
  //   } else {
  //     print(response.body);
  //     print('Fail');
  //     showSnackbar(Colors.red, jsonDecode(response.body)['detail'] ?? "Failed");
  //   }
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // showSnackbar(Color color, String text) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(
  //         text,
  //         style: const TextStyle(color: Colors.white), // Text color
  //       ),
  //       backgroundColor: color, // Background color
  //       behavior: SnackBarBehavior.floating, // Optional: Makes it float
  //       duration:
  //           const Duration(seconds: 3), // Optional: Duration for the Snackbar
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => FocusManager.instance.primaryFocus?.unfocus()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/assets/signin_balls.png"),
                const Text(
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SocialButton(
                  iconPath: "assets/assets/g_logo.svg",
                  text: "Continue with Google",
                ),
                const SizedBox(
                  height: 15,
                ),
                const SocialButton(
                  iconPath: "assets/assets/f_logo.svg",
                  text: "Continue with Meta",
                  horizontalPadding: 90,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Or",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                LoginFeild(
                  controller: emailEC,
                  hint: "Email",
                ),
                const SizedBox(
                  height: 15,
                ),
                LoginFeild(
                  controller: passwordEC,
                  hint: "Password",
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<SignInController>(
                  builder: (controller) {
                    return GradientButton(
                      isLoading: controller.isLoading.value,
                      onPressed: () => controller.send(
                          email: emailEC.text, password: passwordEC.text),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
