import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SwitcherView extends GetView<DashboardController> {
  const SwitcherView({super.key});

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
              Image.asset("assets/images/search.png",
                  height: 20.h),
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
            height: 50.h,
            width: 250.w,
            child: Row(
              children: [
                Image.asset("assets/images/switcher.png",
                    height: 50.h, width: 40.w),
                SizedBox(width: 10.w),
                Text("Switcher",
                    style: AppTextStyle.largebold
                        .copyWith(fontWeight: FontWeight.w500))
              ],
            ),
          ),
          SizedBox(height: 30.h),
          const CustomRowWidget(),
          SizedBox(height: 30.h),
          const CustomRowWidget(
            img: "gym",
            text: "Coworker'S",
          ),
          SizedBox(height: 30.h),
          const CustomRowWidget(text: "Offreur"),
          const Spacer(),
          BackScreen(controller: controller),
        ],
      ),
    );
  }
}

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key, this.img, this.text});
  final String? img;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/images/${img ?? "chief"}.png",
          height: 90.h, width: 90.w),
      SizedBox(width: 10.w),
      Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: FittedBox(
            fit: BoxFit.contain,
            child: Text(text ?? "Entrepreneur du tertiaire",
                style: AppTextStyle.mediumbold
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 12.sp))),
      ),
      const Spacer(),
      Padding(
        padding: EdgeInsets.only(top: 60.0, right: 10.w),
        child:
            Image.asset("assets/images/switch.png", height: 30.h, width: 30.w),
      )
    ]);
  }
}
