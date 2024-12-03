import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/profilesetting/controller/profile_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileGaleryView extends GetView<ProfileSettingController> {
  const ProfileGaleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45.h),
        Padding(
          padding: EdgeInsets.only(right: 41.w),
          child: Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/c_img1.png")),
        ),
        Container(
            width: 312.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            alignment: Alignment.centerLeft,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black),
                label: Text(
                  'Que savez-vous faire ?',
                  style: TextStyle(
                      color: const Color(0xFF959595), fontSize: 13.sp),
                ))),
        const Spacer(),
        Container(
          width: 312.w,
          height: 45.h,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
          alignment: Alignment.topLeft,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: const Text(
            'Galerie',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: 27.h),
        Container(
          width: 360.w,
          height: 317.h,
          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 20.h),
          decoration: ShapeDecoration(
            color: Colors.black.withOpacity(0.20000000298023224),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            shadows: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 8,
                offset: Offset(0, -5),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/gal_img.png",
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/images/gal_img.png",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/gal_img.png",
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/images/gal_img.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        CustomBackGesture(ontap: () {
          controller.currentProfileIndex.value = 0;
        }),
        SizedBox(height: 30.h),
      ],
    );
  }
}
