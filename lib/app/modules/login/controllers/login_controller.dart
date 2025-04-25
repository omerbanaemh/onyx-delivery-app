import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';
import 'package:onyx_delivery/app/core/constants/end_point.dart';
import 'package:onyx_delivery/app/data/remote/api_provider.dart';

class LoginController extends GetxController {
  final userIdController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  onPressedLogin() async {
    if (formKey.currentState!.validate()) {
      // Perform login action
      String userId = userIdController.text;
      String password = passwordController.text;

      var requestData = {
        "Value": {
          "P_LANG_NO": "1",
          "P_DLVRY_NO": "1010",
          "P_PSSWRD": "1",
        }
      };

      try {
        var response = await DioHelper()
            .postData(ApiPaths.checkDeliveryLogin, requestData);

        if (response != null &&
            response['Data'] != null &&
            response['Result'] != null) {
          var deliveryName = response['Data']['DeliveryName'];
          var errNo = response['Result']['ErrNo'];
          var errMsg = response['Result']['ErrMsg'];

          if (errNo == 0) {
            Get.snackbar(
              backgroundColor: AppColors.successColor,
              colorText: AppColors.whiteColor,
              'Welcome',
              'Hello, $deliveryName',
            );
          } else {
            Get.snackbar(
              backgroundColor: AppColors.accentColor,
              colorText: AppColors.whiteColor,
              'Error',
              errMsg,
            );
          }
        } else {
          Get.snackbar(
            backgroundColor: AppColors.accentColor,
            colorText: AppColors.whiteColor,
            'Error',
            'Invalid response from the server',
          );
        }
      } catch (e) {
        Get.snackbar(
          backgroundColor: AppColors.accentColor,
          colorText: AppColors.whiteColor,
          'Error',
          'Something went wrong. Please try again later.',
        );
      }
    } else {
      Get.snackbar(
        backgroundColor: AppColors.accentColor,
        colorText: AppColors.whiteColor,
        'Sorry',
        'Please fill in all fields',
      );
    }
  }
}
