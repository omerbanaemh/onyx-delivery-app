import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final userIdController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
