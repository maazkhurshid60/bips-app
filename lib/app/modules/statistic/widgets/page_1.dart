import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:bips_app/app/modules/statistic/widgets/chart_circle_widget.dart';
import 'package:bips_app/app/modules/statistic/widgets/state_line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Page1 extends GetView<StatisticsController> {
  final bool? isPage2;
  const Page1({
    super.key,
    this.isPage2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 21.h),
        Padding(
          padding: const EdgeInsets.only(left: 22.0, right: 67).w,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Gardienne',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700),
            ),
            Icon(Icons.location_pin, size: 31.h)
          ]),
        ),
        SizedBox(height: 12.h),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 394.w,
                  height: 140.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0F4F5588),
                        blurRadius: 30,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChartCircleWidgte(
                        controller: controller,
                        chartNo: 1,
                        charttitle: "Minimum",
                      ),
                      VerticalDivider(
                        color: Colors.black.withOpacity(0.20),
                        endIndent: 5,
                        indent: 30,
                      ),
                      ChartCircleWidgte(
                        controller: controller,
                        chartNo: 2,
                        charttitle: "Moyen",
                      ),
                      VerticalDivider(
                          color: Colors.black.withOpacity(0.20),
                          endIndent: 5,
                          indent: 30),
                      ChartCircleWidgte(
                        controller: controller,
                        chartNo: 3,
                        charttitle: "Maximum",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 19.h),
                StateLineChartWidget(
                    sourc: controller.linechartData,
                    title: isPage2 == null ? null : "Prix Moyen"),
                SizedBox(height: 10.h),
                StateLineChartWidget(
                    title: isPage2 == null ? "Prix Moyen" : "Prix Maximum",
                    c: Colors.black,
                    sourc: controller.lineChartTime),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (v) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: isPage2 == null
                    ? v == 0
                        ? 2.5
                        : 5
                    : v == 1
                        ? 2.5
                        : 5,
              ),
            );
          }),
        ),
      ],
    );
  }
}
