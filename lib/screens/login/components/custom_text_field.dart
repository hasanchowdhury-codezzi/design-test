import 'package:design_test/utils/constants.dart';
import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String imgUrl;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? fieldValidator;
  final bool? obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.imgUrl,
    this.suffixIcon,
    this.fieldValidator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText ?? false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: const TextStyle(color: Color(0xFF757575)),
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: Dimensions(context).scaleWidth(24),
            right: Dimensions(context).scaleWidth(10),
          ), // Add padding around the icon
          child: SvgPicture.asset(
            imgUrl,
          ),
        ),
        suffix: suffixIcon,
        fillColor: const Color(0xff10161C),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryGradientColor.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
      validator: fieldValidator,
    );
  }
}
