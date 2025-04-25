import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';
import 'package:onyx_delivery/app/core/constants/end_point.dart';
import 'package:onyx_delivery/app/core/helpers/sqlite_db_helper.dart';
import 'package:onyx_delivery/app/data/remote/api_provider.dart';
import 'package:onyx_delivery/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final userIdController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  onPressedLogin() async {
    if (formKey.currentState!.validate()) {
      isLoading = true;
      update();

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

        isLoading = false;
        update();

        if (response != null &&
            response['Data'] != null &&
            response['Result'] != null) {
          var deliveryName = response['Data']['DeliveryName'];
          var errNo = response['Result']['ErrNo'];
          var errMsg = response['Result']['ErrMsg'];

          if (errNo == 0) {
            // Save user data to local storage or database
            var dbHelper = DatabaseHelper();
            await dbHelper.insert({
              'id': 1,
              'name': deliveryName,
              'language': 1,
            });

            // Query all rows to check if data is saved
            // dbHelper.queryAllRows().then((value) {
            //   log('------------------------------>' + value.toString());
            // });

            // Navigate to home screen
            Get.offAllNamed(Routes.HOME);

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
