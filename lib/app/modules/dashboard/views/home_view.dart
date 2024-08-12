import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends GetView<DashboardController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: 40.h),
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/bg1.jpg"), fit: BoxFit.fill)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    controller.activePage.value = 1;
                  },
                  child: Container(
                    height: 25.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    decoration:  const ShapeDecoration(
                       color: Color.fromARGB(255, 187, 185, 185),
                      shape: OvalBorder(
                      side: BorderSide(
                        color: AppColors.lightbrown
                      ),
                      
                    )),
                    width: 160.w,
                    child: Row(
                      children: [
                         Icon(Icons.search,size: 15.h),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text("De qui avez-vous besoin?", style: AppTextStyle.otherTextStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    controller.activePage.value = 5;
                  },
                  child: Icon(Icons.location_on, size: 25.h)),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    controller.activePage.value = 2;
                  },
                  child: Image.asset("assets/images/cart.png",
                      height: 25.h, width: 40.w)),
            ],
          ),
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 2.w),
                Padding(
                  padding:  EdgeInsets.only(top:  50.0.h),
                  child: Container(
                    
                    height: 35.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10).r),
                  ),
                ),
                SizedBox(width: 5.w),
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Marie. K \nGardienne",
                              style: AppTextStyle.otherTextStyle.copyWith(fontSize: 15.sp, color: Colors.white)),
                        Padding(
                          padding:  EdgeInsets.only(bottom: 15.h),
                          child: Image.asset("assets/images/sun.png", height: 20.h),
                        )
                        ],
                      ),
                      Image.asset("assets/images/star.png", height: 20.h,width: 40.w)
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.h, right: 8.w),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            controller.activePage.value = 3;
                          },
                          child: Image.asset("assets/images/box.png",
                              height: 30.h, width: 30.w)),
                      SizedBox(height: 5.h),
                      Text("Bonô", style: AppTextStyle.otherTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w900)),
                      SizedBox(height: 5.h),
                      Image.asset("assets/images/hand.png",
                          height: 30.h, width: 30.w),
                      SizedBox(height: 5.h),
                      GestureDetector(
                          onTap: () {
                            controller.activePage.value = 4;
                          },
                          child: Image.asset("assets/images/cash.png",
                              height: 30.h, width: 30.w)),
                      SizedBox(height: 5.h),
                    GestureDetector(
                          onTap: () {
                            controller.activePage.value = 4;
                          },
                          child: Image.asset("assets/images/messages.png",
                              height: 30.h, width: 30.w)),
                      SizedBox(height: 5.h),
                      GestureDetector(
                          onTap: () {
                            controller.activePage.value = 6;
                          },
                          child: Image.asset("assets/images/pop.png",
                              height: 30.h, width: 30.w)),
                    ],
                  ),
                )
              ]),
          
        ],
      ),
    );
  }
}
