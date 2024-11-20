import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsivelogin/my_hompage.dart';
import 'package:responsivelogin/palletes.dart';
import 'package:responsivelogin/signup.dart';
import 'package:responsivelogin/src/singin_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SignInController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Responsive Login',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
      home: const CreateUser(),
    );
  }
}
