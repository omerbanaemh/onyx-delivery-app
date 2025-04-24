import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          UiHelper.verticalSpace50,
          SvgPicture.asset(
            AppAssets.logo,
            fit: BoxFit.contain,
          ),
          UiHelper.verticalSpace50,
          Stack(children: [
            SvgPicture.asset(
              AppAssets.backgroundSplash,
              fit: BoxFit.contain,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset(
                AppAssets.devlieryImage,
                fit: BoxFit.contain,
              ),
            )
          ]),
          UiHelper.horizontalSpaceMedium,
        ],
      ),
    );
  }
}
