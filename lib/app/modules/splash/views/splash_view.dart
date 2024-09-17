import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 45.h),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(68.r),
              border: Border.all(color: const Color(0xffBFBFBF))),
          child: Obx(() => controller.textIndex.value == 1
              ? SvgPicture.asset('assets/svgs/splash_text.svg',
                  width: 343.w, height: 310.w)
              : Opacity(
                  opacity: 0.80,
                  child: Text(
                    'Bienvenue!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 72.sp,
                        fontFamily: 'times',
                        fontWeight: FontWeight.w400),
                  ),
                )),
        ),
      )),
    );
  }
}
