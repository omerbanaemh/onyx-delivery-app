import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String? hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: AppColors.blackColor.withOpacity(0.5),
        ),
        filled: true,
        fillColor: AppColors.inputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22.r),
          borderSide: BorderSide.none,
        ),
      ),
      textAlign: TextAlign.center,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $hintText';
        }
        return null;
      },
      style: TextStyle(
        fontSize: 14.sp,
        color: AppColors.blackColor,
      ),
      cursorColor: AppColors.secondaryColor,
      cursorHeight: 20.h,
      cursorWidth: 1.w,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      onFieldSubmitted: (value) {
        FocusScope.of(context).nextFocus();
      },
      obscureText: obscureText,
      obscuringCharacter: '*',
      maxLines: 1,
    );
  }
}
