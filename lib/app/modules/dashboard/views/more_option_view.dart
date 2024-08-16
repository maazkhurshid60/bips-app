import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MoreOptionView extends GetView<DashboardController> {
  const MoreOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w,right:10.h, top: 10.h, bottom:20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 200.h,
              child: Column(
                children: [
                  SizedBox(height: 50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/search.png", height: 20.h, ),
                      Icon(Icons.location_on, size: 20.h),
                      Image.asset("assets/images/cart.png",
                          height: 20.h),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Image.asset("assets/images/pop.png",
                      height: 40.h, width: 40.w),
                ],
              )),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomimageShow(
                  onTap: () {
                    controller.activePage.value = 8;
                  },
                  img: "fold",
                ),
                CustomimageShow(
                    onTap: () {
                      controller.activePage.value = 7;
                    },
                    img: "sw",
                    text: "Switcher"),
                const CustomimageShow(img: "help", text: "Aide")
              ]),
          BackScreen(controller: controller)
        ],
      ),
    );
  }
}

class CustomimageShow extends StatelessWidget {
  const CustomimageShow({super.key, this.img, this.text, this.onTap});
  final String? img;
  final String? text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 70.h,
            width: 80.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20.r),
                border: Border.all(width: 2, color: AppColors.golden)),
            child: Image.asset("assets/images/$img.png", height: 30.h,width: 30.w),
          ),
          SizedBox(height: 10.h),
          Text(text ?? "Crédibilité", style: AppTextStyle.mediumbold),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
