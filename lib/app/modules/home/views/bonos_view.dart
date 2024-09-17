import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/notification_view.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BonosView extends GetView<HomeController> {
  const BonosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            children: [
              Icon(Icons.location_on_sharp, size: 31.h),
              Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                width: 396.21.w,
                height: 45.53.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 2.32, color: Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(30.21),
                  ),
                ),
                child: CupertinoSearchTextField(
                  placeholder: "De qui avez-vous besoin?",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Icon(Icons.search, size: 22.h, color: Colors.black),
                  ),
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '5 juin, 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomNotificationRow(
                t1: "1",
                t2: notificationItem.first.t2,
                t3: notificationItem.first.t3,
                t4: notificationItem.first.t4,
              ),
              const Spacer(),
              BackScreen(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}
