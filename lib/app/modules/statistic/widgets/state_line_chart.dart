import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:bips_app/app/modules/statistic/model/monthly_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StateLineChartWidget extends GetView<StatisticsController> {
  final String? title;
  final Color? c;
  final List<LineStatesDate> sourc;
  const StateLineChartWidget(
      {super.key, this.c, this.title, required this.sourc});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332.w,
      height: 242.h,
      padding: EdgeInsets.all(10.h),
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? 'Prix Minimum',
                style: TextStyle(
                    color: const Color(0xFF0C0D0D),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              TextButton.icon(
                iconAlignment: IconAlignment.end,
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    textStyle:
                        WidgetStatePropertyAll(TextStyle(color: Colors.black)),
                    iconColor: WidgetStatePropertyAll(Colors.black)),
                label:
                    const Text("5 juin", style: TextStyle(color: Colors.black)),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          SizedBox(
            height: 165.h,
            child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              series: <LineSeries>[
                LineSeries<LineStatesDate, String>(
                  dataSource: sourc,
                  color: c ?? AppColors.golden,
                  xValueMapper: (LineStatesDate data, _) => data.months,
                  yValueMapper: (LineStatesDate data, _) => data.states,
                  dataLabelMapper: (datum, index) => datum.months.toString(),
                  markerSettings: MarkerSettings(
                      color: c ?? AppColors.golden, isVisible: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
