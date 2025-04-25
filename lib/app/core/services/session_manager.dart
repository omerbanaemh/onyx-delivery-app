import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onyx_delivery/app/routes/app_pages.dart';

class SessionManager with WidgetsBindingObserver {
  static Timer? _timer;
  static const int _sessionTimeout = 1 * 60; // 2 minutes timeout

  static void startSessionTimeout(BuildContext context) {
    WidgetsBinding.instance.addObserver(SessionManager());

    _startTimer(context);
  }

  static void _startTimer(BuildContext context) {
    _timer?.cancel();

    _timer = Timer(const Duration(seconds: _sessionTimeout), () {
      _onSessionTimeout(context);
    });
  }

  static void _onSessionTimeout(BuildContext context) {
    Get.offAllNamed(Routes.LOGIN);
  }

  static void resetSessionTimeout(BuildContext context) {
    _startTimer(context);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.paused) {
      _startTimer(AppLifecycleState.paused as BuildContext);
    } else if (state == AppLifecycleState.resumed) {
      resetSessionTimeout(AppLifecycleState.resumed as BuildContext);
    }
  }
}
