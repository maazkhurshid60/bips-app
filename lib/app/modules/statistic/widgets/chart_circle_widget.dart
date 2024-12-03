import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:bips_app/app/modules/statistic/model/monthly_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartCircleWidgte extends StatelessWidget {
  final StatisticsController controller;

  final int chartNo;
  final String? charttitle;

  const ChartCircleWidgte(
      {super.key,
      required this.controller,
      required this.chartNo,
      this.charttitle});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(4).h,
      child: Stack(
        children: [
          // vvfc
          SfCircularChart(
              backgroundColor: Colors.white,
              series: <RadialBarSeries<MonthlyStatesDate, String>>[
                RadialBarSeries(
                  innerRadius: "80%",
                  radius: "100%",
                  trackColor: Colors.white,
                  maximumValue: 100,
                  pointColorMapper: (datum, index) => AppColors.golden,
                  dataSource: [controller.circleStateData[chartNo - 1]],
                  xValueMapper: (MonthlyStatesDate data, _) => data.months,
                  yValueMapper: (MonthlyStatesDate data, _) => data.states,
                ),
              ],
              title: ChartTitle(
                  text: '$charttitle',
                  textStyle:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500))),
          Positioned(
              bottom: 40.h,
              right: 35.w,
              child: Text(
                "${controller.circleStateData[chartNo - 1].states}%",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              )),
          Positioned(
              bottom: -4.h,
              right: 2.w,
              child: Text(
                controller.circleStateData[chartNo - 1].months,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.60),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ))
        ],
      ),
    ));
  }
}
