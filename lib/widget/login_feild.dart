import 'package:flutter/material.dart';
import 'package:responsivelogin/palletes.dart';

class LoginFeild extends StatelessWidget {
  final String hint;
  const LoginFeild({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        decoration:  InputDecoration(
          hintText: hint,
          contentPadding:const EdgeInsets.all(27),
          //when ur not clicking on it
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          //when u click on it
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.gradient2,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),);
  }
}