import 'package:bips_app/app/modules/Cashprice/views/cash_price_main_view.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StatisticMainView extends GetView<StatisticsController> {
  const StatisticMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 445.w,
          height: 264.h,
          decoration: const ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.89, -0.45),
              end: Alignment(-0.89, 0.45),
              colors: [
                Color(0xFFCBA95C),
                Colors.white,
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33),
                bottomRight: Radius.circular(33),
              ),
            ),
          ),
        ),
        Column(
          children: [
            const Locationwidget(),
            SizedBox(height: 15.h),
            Container(
                width: 312.w,
                height: 45.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
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
            Expanded(
                child: PageView.builder(
              itemCount: 3,
              onPageChanged: (value) => controller.maisonindex.value = 0,
              itemBuilder: (context, index) => controller.statisticPages[index],
            )),
            SizedBox(height: 10.h),
            BackScreen(controller: Get.find<HomeController>()),
            SizedBox(height: 10.h)
          ],
        ),
      ],
    );
  }
}
