import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';
import 'package:onyx_delivery/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                AppAssets.logo,
                fit: BoxFit.contain,
              ),
            ),
            UiHelper.horizontalSpaceMedium,
          ]),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.backgroundSplash,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            UiHelper.verticalSpaceMedium,
            SvgPicture.asset(
              AppAssets.devlieryImage,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ],
      extendBody: true,
    );
  }
}
