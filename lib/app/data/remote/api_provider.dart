import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as GetX;

class DioHelper {
  static final Dio dio = Dio();

  
  Future<dynamic> postData(String url, dynamic data) async {
    try {
      final Response response = await dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );
      log('Response: ${response.data}');
      return response.data;
    } on DioError catch (e) {
      log('Error: ${e.message}');
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

  Future<dynamic> getData(String url) async {
    try {
      final Response response = await dio.get(url);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

  Future<dynamic> putData(String url, dynamic data) async {
    try {
      final Response response = await dio.put(url, data: data);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

  Future<dynamic> deleteData(String url) async {
    try {
      final Response response = await dio.delete(url);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }
}
