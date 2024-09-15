import 'package:bips_app/app/modules/chart/controller/chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommertireWidget extends GetView<ChartController> {
  const CommertireWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return controller.chartPageViewItem[index];
      },
    );
  }
}
