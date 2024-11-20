import 'package:flutter/material.dart';
import 'package:responsivelogin/my_hompage.dart';
import 'package:responsivelogin/palletes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Login',
      theme: ThemeData.dark( 
          useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor
      ),
      home: const MyHompage(),
    );
  }
}
