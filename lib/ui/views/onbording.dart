import 'package:ecommerce/model/intro.dart';
import 'package:ecommerce/ui/route/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter/material.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.deepOrange,
          ),
        ),
        next: const Text(
          "Next",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.deepOrange,
          ),
        ),
        done: const Text("Done",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.deepOrange,
            )),
        onDone: () {
          Get.toNamed(loginScreen);
        },
        onSkip: () {
          Get.toNamed(loginScreen);
        },
        dotsDecorator: DotsDecorator(
          activeColor: Colors.deepOrange,
          size: Size.square(10.0.sp),
          activeSize: Size(20.0.sp, 10.0.sp),
          color: const Color.fromARGB(255, 172, 135, 124),
          spacing: EdgeInsets.symmetric(horizontal: 3.0.w),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0.r)),
        ),
        pages: introData
            .map((e) => PageViewModel(
                  decoration: PageDecoration(
                    bodyPadding: EdgeInsets.symmetric(horizontal: 15.w),
                    titlePadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                    titleTextStyle: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    bodyTextStyle: TextStyle(
                      fontSize: 17,
                    ),
                    imagePadding: EdgeInsets.all(20.h),
                    imageFlex: 6,
                    bodyFlex: 2,
                    footerFlex: 1,
                  ),
                  title: e.title,
                  body: e.description,
                  image: Image.asset(e.image),
                ))
            .toList(),
      ),
    );
  }
}
