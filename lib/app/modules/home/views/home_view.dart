import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/components/custom_tabbar.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';
import 'package:onyx_delivery/app/core/services/session_manager.dart';
import 'package:onyx_delivery/app/modules/home/widgets/order_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SessionManager.resetSessionTimeout(context),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.accentColor,
              expandedHeight: 127.h,
              flexibleSpace: FlexibleSpaceBar(
                title: RichText(
                  text: TextSpan(
                    text: '${controller.userName?.split(' ').first} ',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                background: Container(),
              ),
            ),
            SliverToBoxAdapter(
              child: UiHelper.verticalSpaceMedium,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: const CustomTabbar(),
              ),
            ),
            SliverToBoxAdapter(
              child: UiHelper.verticalSpaceMedium,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const OrderCard();
                },
                childCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
