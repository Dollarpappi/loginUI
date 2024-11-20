// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isLoading;
  final bool disable;
  final bool upper;

  const MyElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.disable = false,
    this.upper = true,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: disable
          ? null
          : isLoading
              ? null
              : onPressed,
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.red.withOpacity(0.5),
        backgroundColor: Colors.red,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.black.withOpacity(0.4),
        minimumSize: Size(media.width, 60),
      ),
      child: isLoading
          ? const CircularProgressIndicator(color: Colors.white)
          : Text(
              upper ? title.toUpperCase() : title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Sen",
                fontWeight: FontWeight.w700,
              ),
            ),
    );
  }
}
