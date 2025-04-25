import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:onyx_delivery/app/core/constants/end_point.dart';
import 'package:onyx_delivery/app/data/remote/api_provider.dart';

class LoginRepository {
  DioHelper dioHelper;

  LoginRepository({required this.dioHelper});

  Future<Response?> login(String userId, String password) async {
    final data = {
      'P_LANG_NO': '2',
      'P_DLVRY_NO': userId,
      'P_PSSWRD': password,
    };

    try {
      final response = await dioHelper.postData(
        ApiPaths.checkDeliveryLogin,
        data,
      );

      log('Login request data: $data, response: ${response.data}');
      return response;
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }
}
