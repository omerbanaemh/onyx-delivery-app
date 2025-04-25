import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.text = '',
    this.backgroundColor = AppColors.secondaryColor,
    this.textColor = AppColors.whiteColor,
  });

  final void Function()? onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.r),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 16.sp,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
