import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CashPriceView extends GetView<DashboardController> {
  const CashPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        children: [
          SizedBox(height: 50.h),

          // ---------header------------------
          Image.asset(
            "assets/images/cash.png",
            height: 50.h,
            width: 50.h,
          ),
          Obx(() => Text(
              controller.cashpriceCurrentIndex.value == 0
                  ? "Marie, K"
                  : "Sectoriel",
              style: AppTextStyle.extraMediumbold.copyWith(fontWeight: FontWeight.w500))),
          SizedBox(height: 20.h),

          //------------main content------------
          const ChartWidget(),
          SizedBox(
            height:  10.h,
          ),

          //--------------dots--------------------
          DotsWidget(controller: controller),
          SizedBox(
            height: 50.h,
          ),
          BackScreen(controller: controller)
        ],
      ),
    );
  }
}

List<Widget> items = [const Item1(), const Item2()];
class ChartWidget extends GetView<DashboardController> {
  const ChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: PageView.builder(
        onPageChanged: (value) {
          controller.cashpriceCurrentIndex.value = value;
        },
        itemCount: 2,
        itemBuilder:(context, index) {
          return items[index];
        },
       
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.golden, width: 2),
          borderRadius: BorderRadius.circular(40).r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Gardienne", style: AppTextStyle.extraMediumbold),
              Padding(
                padding: const EdgeInsets.only(right: 42.0),
                child: Icon(Icons.location_on, size: 25.h),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("05 juin,2024", style: AppTextStyle.smallbold),
              Text("Abobo / Selmer", style: AppTextStyle.smallbold),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.proposé", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 15.h,
                width: 100.w,
                decoration: const ShapeDecoration(
                   color: AppColors.golden,
                  
                  shape: OvalBorder(
                  
                )),
               
              ),
               Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("800/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.minimum", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 15.h,
                width: 80.w,
               decoration: const ShapeDecoration(
                   color: AppColors.golden,
                  
                  shape: OvalBorder(
                  
                )),              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("700/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.élevé", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 20.h,
                width: 170.w,
                decoration: const ShapeDecoration(
                   color: AppColors.golden,
                  shape: OvalBorder(
                  
                )),              ),
               Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("900/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15).w,
            child:
                const Text("400   500   600   700   800   900   100   1100"),
          )
        ],
      ),
    );
  }
}
class Item2 extends StatelessWidget {
  const Item2({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.golden, width: 2),
          borderRadius: BorderRadius.circular(40).r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Gardienne", style: AppTextStyle.extraMediumbold),
              Padding(
                padding: const EdgeInsets.only(right: 42.0),
                child: Icon(Icons.location_on, size: 25.h),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("05 juin,2024", style: AppTextStyle.smallbold),
              Text("Abobo / Selmer", style: AppTextStyle.smallbold),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.minimum", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 15.h,
                width: 100.w,
                decoration: const ShapeDecoration(
                    color: AppColors.golden,
                    shape: OvalBorder()),
              ),
               Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("800/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.moyen", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 15.h,
                width: 150.w,
               decoration: const ShapeDecoration(
                    color: AppColors.golden,
                    shape: OvalBorder()),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("900/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("P.élevé", style: AppTextStyle.smallbold.copyWith(fontSize:12.sp)),
              SizedBox(width: 3.w),
              Container(
                height: 20.h,
                width: 200.w,
                decoration: const ShapeDecoration(
                    color: AppColors.golden,
                    shape: OvalBorder()),
              ),
               Padding(
                padding: EdgeInsets.only(bottom: 40.0.h),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/mbox.png",
                      height: 40.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 15.w,
                      child:  Text("1000/J",style:AppTextStyle.smallbold.copyWith(fontSize:12.sp)))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15).w,
            child:
                const Text("400   500   600   700   800   900   1000   1100"),
          )
        ],
      ),
    );
  }
}

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    super.key,
    required this.controller,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: controller.cashpriceCurrentIndex.value == 0 ? 5.r : 3.r,
              backgroundColor: Colors.black,
            ),
            SizedBox(width: 5.w),
            CircleAvatar(
              radius: controller.cashpriceCurrentIndex.value == 1 ? 5.r : 3.r,
              backgroundColor: Colors.black,
            ),
          ],
        ));
  }
}
