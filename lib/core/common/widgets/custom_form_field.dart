
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:lms_dark_001/core/theme/app_palette.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool isObscureText;
  final String validationMessage;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Function()? onTap;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final bool isRequired;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
    final Function(String)? onChanged;
  final bool autoFocus;

  const CustomFormField(
      {super.key,
      this.maxLines,
      this.autoFocus = false,
      required this.hintText,
      required this.controller,
      this.onTap,
      this.onFieldSubmitted,
      this.prefixIcon,
      this.onChanged,
      this.suffixIcon,
      this.keyboardType,
      this.textInputAction,
      this.isObscureText = false,
      this.validationMessage = 'Input is required',
      this.contentPaddingHorizontal = 0,
      this.contentPaddingVertical = 15,
      this.isRequired = true,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      autofocus: autoFocus,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      // maxLines: (maxLines == null) ? maxLines : null,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: contentPaddingVertical,
            horizontal: contentPaddingHorizontal),
        hintText: hintText,
        label: Text(labelText),
        suffixIcon: IconButton(
            onPressed: onTap,
            icon: Icon(
              suffixIcon,
              color: AppPalette.whiteColor,
              size: 22,
            )),
        prefixIcon: Icon(
          prefixIcon,
          color: AppPalette.whiteColor,
          size: 22,
        ),
      ),
      autovalidateMode:
          (isRequired) ? AutovalidateMode.onUserInteraction : null,
      validator: (isRequired)
          ? ValidationBuilder(requiredMessage: validationMessage).build()
          : null,
      obscureText: isObscureText,
    );
  }
}
