import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as GetX;

class DioHelper {
   Future<dynamic> postData(String url, dynamic data) async {
    try {
      final Dio dio = Dio();
      final Response response = await dio.post(url, data: data);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

   Future<dynamic> getData(String url) async {
    try {
      final Dio dio = Dio();
      final Response response = await dio.get(url);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

   Future<dynamic> putData(String url, dynamic data) async {
    try {
      final Dio dio = Dio();
      final Response response = await dio.put(url, data: data);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }

   Future<dynamic> deleteData(String url) async {
    try {
      final Dio dio = Dio();
      final Response response = await dio.delete(url);
      return response.data;
    } on DioError catch (e) {
      GetX.Get.snackbar('Error', e.message ?? 'An unknown error occurred');
      return null;
    }
  }
}
