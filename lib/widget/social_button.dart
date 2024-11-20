import 'package:flutter/material.dart';
import 'package:responsivelogin/palletes.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final double horizontalPadding;
  const SocialButton({super.key, required this.iconPath, required this.text,  this.horizontalPadding = 100,});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text(text, style: TextStyle(
        color: Pallete.whiteColor,
        fontSize: 17,
      ),),
      onPressed: (){},
      icon: SvgPicture.asset(iconPath, color: Pallete.whiteColor, width: 25,),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Pallete.borderColor,
            width: 3,
            
          ),
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}