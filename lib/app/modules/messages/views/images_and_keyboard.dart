import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';

class ImagesAndKeynoardView extends GetView<HomeController> {
  const ImagesAndKeynoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Icon(Icons.location_on, size: 35.h)),
              Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.25.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0.5,
                ),
              ),
              const chartHeader(),
              SizedBox(height: 20.h),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset("assets/images/girl_img.png", height: 350.h),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                      child: Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: const Color(0x2BBFBFBF),
                        ),
                        height: 71.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 68.w,
                              height: 37.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x2BBFBFBF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1.02, color: Color(0xFFCBA95C)),
                                  borderRadius: BorderRadius.circular(12.21),
                                ),
                              ),
                            ),
                            SizedBox(width: 13.w),
                            const SizedBox(
                              width: 116,
                              child: Text(
                                'Aa.........................',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset("assets/images/smilee.png",
                                height: 30.h)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 322.w,
                      height: 160.h,
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.02, color: const Color(0xFFCBA95C)),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: VirtualKeyboard(
                          height: 145.h,
                          type: VirtualKeyboardType.Alphanumeric),
                    ),
                  ],
                ),
              )),
              BackScreen(controller: controller),
              SizedBox(height: 10.h),
            ],
          )),
    );
  }
}
