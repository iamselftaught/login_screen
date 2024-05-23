import 'package:flutter/material.dart';
import 'package:lms_dark_001/core/theme/app_palette.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final IconData? icon;
  final Color color;
  final double fontSize;
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.width = 395,
      this.height = 55,
      this.fontSize = 17,
      this.icon,
      this.color = AppPalette.primaryBlue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            color,
            // AppPalette.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          backgroundColor: AppPalette.transparentColor,
          shadowColor: AppPalette.transparentColor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (icon != null)
                  ? Icon(
                      icon,
                      size: 24.0,
                    )
                  : Container(),
              // const SizedBox(
              //   width: 9,
              // ),
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                    color: AppPalette.whiteColor),
              )
            ]),
      ),
    );
  }
}
