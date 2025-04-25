import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onyx_delivery/app/components/custom_text_form_field.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/modules/login/controllers/login_controller.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            CustomTextFormField(
                controller: controller.userIdController,
                hintText: 'User ID',
                keyboardType: TextInputType.number),
            UiHelper.verticalSpaceTiny,
            CustomTextFormField(
                controller: controller.passwordController,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true),
          ],
        ),
      ),
    );
  }
}
