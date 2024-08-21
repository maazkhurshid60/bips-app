import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CredibilityView extends GetView<HomeController> {
  const CredibilityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 10.w, right: 10.h, top: 10.h, bottom: 20.h),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/search.png", height: 20.h),
              Icon(Icons.location_on, size: 20.h),
              Image.asset("assets/images/cart.png", height: 20.h),
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(color: AppColors.golden),
            ),
            height: 40.h,
            width: 250.w,
            child: Row(
              children: [
                Image.asset("assets/images/fold.png"),
                SizedBox(width: 10.w),
                Text("Crédibilité", style: AppTextStyle.extraMediumLight),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Image.asset("assets/images/h1.jpg", height: 25.h),
              SizedBox(width: 10.w),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Text("Casier judiciaire",
                    style: AppTextStyle.smallbold
                        .copyWith(fontWeight: FontWeight.w900)),
              ),
              SizedBox(width: 10.w),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Container(
                  height: 15.h,
                  width: 120.w,
                  decoration: const ShapeDecoration(
                      color: AppColors.golden,
                      shape: OvalBorder(
                          side: BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: Image.asset("assets/images/mbox.png",
                    height: 50.h, width: 50.w),
              )
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Image.asset("assets/images/h2.jpg", height: 25.h),
              SizedBox(width: 10.w),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Text("Résidence",
                    style: AppTextStyle.smallbold
                        .copyWith(fontWeight: FontWeight.w900)),
              ),
              SizedBox(width: 60.w),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: Icon(Icons.location_on, size: 30.h),
              )
            ],
          ),
          SizedBox(height: 40.h),
          Row(
            children: [
              Image.asset("assets/images/p1.jpg", height: 25.h),
              SizedBox(width: 10.w),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Text("Responsabilité familiale",
                    style: AppTextStyle.smallbold
                        .copyWith(fontWeight: FontWeight.w900)),
              ),
            ],
          ),
          const Spacer(),
          BackScreen(controller: controller)
        ],
      ),
    );
  }
}
