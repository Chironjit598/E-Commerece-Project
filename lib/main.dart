import 'package:ecommerce/const/app_string.dart';
import 'package:ecommerce/ui/route/route.dart';
// import 'package:ecommerce/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.deepOrange.shade300));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          // defaultTransition: Transition.leftToRight,
          // theme: AppTheme().lightTheme(context),
          // darkTheme: AppTheme().darkTheme(context),
          // themeMode: ThemeMode.light,
          getPages: getPages,
          initialRoute: splash,
          unknownRoute: getPages.first,
        );
      },
    );
  }
}
