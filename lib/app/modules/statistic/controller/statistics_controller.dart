import 'package:bips_app/app/modules/statistic/model/monthly_model.dart';
import 'package:bips_app/app/modules/statistic/widgets/page_1.dart';
import 'package:bips_app/app/modules/statistic/widgets/page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsController extends GetxController {
  RxInt maisonindex = 0.obs;
  bool? isfromaccount;

  List<MonthlyStatesDate> circleStateData = [
    MonthlyStatesDate(months: "500/h", states: 61),
    MonthlyStatesDate(months: "800/h", states: 78),
    MonthlyStatesDate(months: "1000/h", states: 50)
  ];
  List<LineStatesDate> linechartData = [
    LineStatesDate(months: "Jan", states: 5),
    LineStatesDate(months: "Feb", states: 24),
    LineStatesDate(months: "Mar", states: 35),
    LineStatesDate(months: "Apr", states: 48),
    LineStatesDate(months: "May", states: 53),
  ];
  List<LineStatesDate> lineChartTime = [
    LineStatesDate(months: "5 am", states: 0),
    LineStatesDate(months: "6 am", states: 10),
    LineStatesDate(months: "7 am", states: 20),
    LineStatesDate(months: "8 am", states: 30),
    LineStatesDate(months: "9 am", states: 40),
  ];

  List<Widget> statisticPages = [
    const Page1(),
    const Page1(isPage2: true),
    const Page3()
  ];
}
