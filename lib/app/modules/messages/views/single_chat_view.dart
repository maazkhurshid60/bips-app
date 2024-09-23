import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/messages/widgets/single_chat_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingleChatView extends StatelessWidget {
  const SingleChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 30.h),
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
            SizedBox(height: 50.h),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '4 juin, 2024',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 30.w),
                    Image.asset("assets/images/video.png", height: 31.h),
                  ],
                ),
                SizedBox(height: 100.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 42.h,
                    width: 229.w,
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                        color: const Color(0x2BBFBFBF),
                        borderRadius: BorderRadius.circular(25.r)),
                    child: Text(
                      'jkjkjklk',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.19.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: const TextWidget(),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 40.h),
                  child: const TextWidget(isRight: false),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: const TextWidget(),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 40.h),
                  child: const TextWidget(isRight: false),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: const TextWidget(),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 32.h,
                width: 33.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.golden,
                ),
                child: Icon(Icons.clear, color: Colors.white, size: 20.h),
              ),
            ),
            SizedBox(height: 10.h),
            const SingleChatFooter()
          ],
        ),
      )),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String? text;
  final bool? isRight;
  const TextWidget({super.key, this.isRight, this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment:
            isRight == null ? Alignment.centerRight : Alignment.centerLeft,
        child: SizedBox(
          width: 182.w,
          height: 42.h,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 182.w,
                  height: 42.h,
                  decoration: ShapeDecoration(
                    color: const Color(0x2BBFBFBF),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1.02, color: Colors.white),
                      borderRadius: BorderRadius.circular(12.21),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13.w,
                top: 14.h,
                child: SizedBox(
                  width: 116.w,
                  child: Text(
                    text ?? 'Solange Kouamé',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
