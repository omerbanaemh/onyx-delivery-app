import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/components/custom_button.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';
import 'package:onyx_delivery/app/modules/login/widgets/custom_appbar.dart';
import 'package:onyx_delivery/app/modules/login/widgets/custom_login_form.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              const CustomAppBar(),
              UiHelper.verticalSpace100,
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 29.sp,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              UiHelper.verticalSpaceSmall,
              Text(
                'Log back into your account',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              UiHelper.verticalSpace50,
              CustomLoginForm(controller: controller),
              UiHelper.verticalSpaceLarge27,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Show More',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    UiHelper.horizontalSpaceMedium,
                  ],
                ),
              ),
              UiHelper.verticalSpaceLarge27,
              GetBuilder<LoginController>(builder: (_) {
                return controller.isLoading
                    ? const CircularProgressIndicator(
                        color: AppColors.secondaryColor,
                      )
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: CustomButton(
                          text: 'Login',
                          onPressed: controller.onPressedLogin,
                        ),
                      );
              }),
              UiHelper.verticalSpaceLarge27,
              SvgPicture.asset(
                AppAssets.devlieryBusImage,
              ),
              UiHelper.verticalSpaceLarge27,
            ],
          )),
    );
  }
}
