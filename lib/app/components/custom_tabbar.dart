import 'package:flutter/material.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: PrimaryContainer(
          radius: 30,
          child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.secondaryColor),
              tabs: const [
                Tab(
                  text: 'New',
                ),
                Tab(
                  text: 'Others',
                ),
              ]),
        ));
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    super.key,
    this.radius,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColors.whiteColor,
        borderRadius: BorderRadius.circular(radius ?? 30),
        boxShadow: [
          BoxShadow(
            color: color ?? AppColors.whiteColor.withOpacity(0.5),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}
