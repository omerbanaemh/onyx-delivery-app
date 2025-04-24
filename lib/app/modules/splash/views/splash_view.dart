import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
        centerTitle: true,
      ),
      body: SvgPicture.asset(
        AppAssets.logo,
      ),
    );
  }
}
