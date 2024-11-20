import 'package:flutter/material.dart';
import 'package:responsivelogin/palletes.dart';

class GradientButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const GradientButton(
      {super.key, required this.onPressed, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isLoading
                  ? [
                      Pallete.gradient1.withOpacity(0.3),
                      Pallete.gradient2.withOpacity(0.3),
                      Pallete.gradient3.withOpacity(0.3)
                    ]
                  : [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(7)),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 5,
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          "Sign in",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
