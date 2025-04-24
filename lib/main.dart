import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(375, 812),
        builder: (context, child) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitUp,
          ]);
          return GetMaterialApp(
            title: "Onyx Delivery App",
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              ScreenUtil.init(context);
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Scaffold(
                  body: child ?? const SizedBox(),
                ),
              );
            },
            locale: const Locale("en"),
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ar', ''),
            ],
            themeMode: ThemeMode.light,
            theme: ThemeData(
              fontFamily: 'Cairo',
              useMaterial3: true,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        });
  }
}
