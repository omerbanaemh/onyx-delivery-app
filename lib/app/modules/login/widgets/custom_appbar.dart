import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';
import 'package:onyx_delivery/app/modules/login/widgets/language_selection_dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 26.w, top: 50.h),
          child: SvgPicture.asset(
            width: 150.w,
            height: 50.h,
            AppAssets.logo,
          ),
        ),
        const Spacer(),
        Stack(
          children: [
            SvgPicture.asset(
              AppAssets.circleIcon,
            ),
            Positioned(
              top: 45.h,
              left: 50.w,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const LanguageSelectionDialog(),
                  );
                },
                child: SvgPicture.asset(
                  AppAssets.languageIcon,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
