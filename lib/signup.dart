import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsivelogin/src/create_account.dart';
import 'package:responsivelogin/widget/gradient_button.dart';

import 'widget/login_feild.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController usernamCtrl = TextEditingController();

  @override
  void initState() {
    Get.put(CreateAccount());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              //textfields
              LoginFeild(
                hint: "Username",
                controller: usernamCtrl,
              ),
              LoginFeild(
                hint: "Email",
                controller: emailCtrl,
              ),
              LoginFeild(
                hint: "Password",
                controller: passwordCtrl,
              ),

              GetBuilder<CreateAccount>(
                builder: (controller) {
                  return GradientButton(
                    isLoading: controller.isLoading.value,
                    onPressed: () => controller.creatUser(
                      email: emailCtrl.text,
                      password: passwordCtrl.text,
                      name: usernamCtrl.text,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
