import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CashPriceView extends GetView<HomeController> {
  const CashPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10.w, right: 10.h, bottom: 20.h),
          child: Column(
            children: [
              // ---------header------------------

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
                  style: TextStyle(fontSize: 14.sp, color: Color(0xffBFBFBF)),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.only(left: 20),
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: const EdgeInsets.only(right: 50.0).w,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.location_on_sharp, size: 31.h)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 38.0).w,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Obx(() => Text(
                        controller.cashpriceCurrentIndex.value == 0
                            ? 'Marie K'
                            : "Sectoriel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w200,
                        ),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.center,
                  width: 80.w,
                  height: 30.h,
                  child: Text(
                    "Gardienne",
                    style: AppTextStyle.otherTextStyle
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffBFBFBF),
                      borderRadius: BorderRadius.circular(5).r),
                ),
              ),
              SizedBox(height: 10.h),
              //------------main content------------
              const ChartWidget(),
              SizedBox(
                height: 10.h,
              ),

              //--------------dots--------------------

              SizedBox(
                height: 50.h,
              ),
              BackScreen(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> items = [const Item1(), const Item2()];

class ChartWidget extends GetView<HomeController> {
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
        itemBuilder: (context, index) {
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0x47BFBFBF), borderRadius: BorderRadius.circular(10).r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '5 juin, 2024',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w100,
              height: 0,
            ),
          ),
          SizedBox(height: 60.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Minimum = = = = = = = = ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 25.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '800',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: OvalBorder()),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Moyen = = = = = = = = = = = = = = =',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 25.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '1000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: OvalBorder()),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Élevé = = = = = = = = = = = = = = = = = = = = ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 25.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '1100',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: OvalBorder()),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30).w,
            child: const Text(
              "400   500   600   700   800   900   1000   1100",
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(backgroundColor: Colors.black, radius: 7.r),
            SizedBox(width: 5.w),
            CircleAvatar(backgroundColor: Colors.black, radius: 4.r),
          ]),
          SizedBox(height: 5.h),
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0x47BFBFBF), borderRadius: BorderRadius.circular(10).r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '5 juin, 2024',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w100,
              height: 0,
            ),
          ),
          SizedBox(height: 60.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Minimum = == = = = ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 25.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '800',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: CircleBorder()),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Moyen = = = = = = = = = = =',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 30.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '1000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: CircleBorder()),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Prix Élevé = = = = = = = = = = = = = = = ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.86,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
              SizedBox(width: 2.w),
              Container(
                height: 30.h,
                alignment: Alignment.center,
                width: 40.w,
                child: Text(
                  '1100',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.37.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
                decoration: const ShapeDecoration(
                    color: AppColors.golden, shape: CircleBorder()),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0).w,
            child: const Text(
              "400  500  600  700  800  900  1000  1100  1200  1300",
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(backgroundColor: Colors.black, radius: 4.r),
            SizedBox(width: 5.w),
            CircleAvatar(backgroundColor: Colors.black, radius: 7.r),
          ]),
          SizedBox(height: 5.h),
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

  final HomeController controller;

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
