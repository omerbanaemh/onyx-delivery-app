import 'package:flutter/material.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 91,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.black12Color,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#1569987',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grey600Color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.grey600Color,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'New',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.cardColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Vertical Divider
                        Container(
                          height: 40,
                          width: 1,
                          color: AppColors.grey300Color,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        // Total Price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total price',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.grey600Color,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '400 LE',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Vertical Divider
                        Container(
                          height: 40,
                          width: 1,
                          color: AppColors.grey300Color,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        // Date
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.grey600Color,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '1/1/2020',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Right side green button
            Container(
              width: 44,
              decoration: const BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UiHelper.verticalSpaceMedium,
                  const Text('Order Details',style: TextStyle(color: AppColors.whiteColor ,fontSize: 8),),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.whiteColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
