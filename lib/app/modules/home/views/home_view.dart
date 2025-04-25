import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.whiteColor,
            expandedHeight: 127.h,
            flexibleSpace: FlexibleSpaceBar(
              title: Obx(() => RichText(
                    text: TextSpan(
                      text: controller.userName,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              background: Container(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item #$index'),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
