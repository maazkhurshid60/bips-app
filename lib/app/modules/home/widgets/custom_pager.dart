import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomPager extends GetView<HomeController> {
  const CustomPager({super.key, this.imge});
  final String? imge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/${imge ?? "bg"}.png"),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          SizedBox(
            height: 46.h,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      controller.activePage.value = 5;
                    },
                    child: Icon(Icons.location_on, size: 30.h)),
                Text(
                  '4 km',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.3,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    controller.activePage.value = 1;
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 29.w),
                    child: Row(
                      children: [
                        Icon(Icons.search, size: 24.h),
                        const FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "De qui avez-vous besoin?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ))
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    controller.activePage.value = 2;
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 29.w),
                    child:
                        SvgPicture.asset("assets/svgs/not.svg", height: 30.h),
                  )),
            ],
          ),
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 21.w, top: 160.h),
                  child: Container(
                    width: 66.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFF444444),
                        border: Border.all(color: AppColors.golden),
                        borderRadius: BorderRadiusDirectional.circular(8.r)),
                  ),
                ),
                SizedBox(width: 4.w),
                Padding(
                  padding: EdgeInsets.only(top: 160.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Marie. K \nGardienne",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: const Icon(
                              Icons.star,
                              color: AppColors.golden,
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/star.png",
                          height: 20.h, width: 40.w)
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h, right: 44.w),
                  child: Column(children: [
                    GestureDetector(
                        onTap: () {
                          controller.activePage.value = 3;
                        },
                        child: Image.asset("assets/images/box.png",
                            color: Colors.white, height: 33.h)),
                    SizedBox(height: 5.h),
                    const Text(
                      "Bonô",
                      style: TextStyle(
                        color: Color(0xFFBFBFBF),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Image.asset("assets/images/hand.png",
                        color: Colors.white, height: 36.h),
                    SizedBox(height: 10.h),
                    GestureDetector(
                        onTap: () {
                          controller.activePage.value = 4;
                        },
                        child: SvgPicture.asset("assets/svgs/money.svg",
                            height: 40.h)),
                    SizedBox(height: 10.h),
                    GestureDetector(
                        onTap: () {
                          controller.activePage.value = 4;
                        },
                        child: Image.asset("assets/images/messages.png",
                            color: Colors.white, height: 36.h)),
                    SizedBox(height: 10.h),
                    GestureDetector(
                        onTap: () {
                          controller.activePage.value = 6;
                        },
                        child: Image.asset("assets/images/pop.png",
                            color: Colors.white, height: 40.h)),
                  ]),
                )
              ]),
          SizedBox(
            height: 10.h,
            width: 40.w,
            child: Obx(() => Row(
                  children: [
                    for (int i = 0; i < 3; i++) ...{
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius:
                              controller.customHomePage.value == i ? 5.r : 3.r),
                      SizedBox(width: 3.w)
                    }
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
