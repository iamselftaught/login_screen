import 'package:flutter/material.dart';
import 'package:lms_dark_001/core/theme/app_palette.dart';

class SocialIcons extends StatelessWidget {
  final String asset;

  const SocialIcons({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: AppPalette.backgroundColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1, color: AppPalette.greyColor.withOpacity(0.3))),
      height: 50,
      width: 100,
      child: Image.asset(
        asset,
        height: 30,
        fit: BoxFit.contain,
      ),
    );
  }
}
