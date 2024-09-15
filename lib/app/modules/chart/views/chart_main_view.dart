import 'package:bips_app/app/modules/chart/controller/chart_controller.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_single_item_header.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChartMainView extends GetView<ChartController> {
  final bool? isFromHomePage;

  final HomeController? homeController;
  const ChartMainView({super.key, this.isFromHomePage, this.homeController});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding:
                EdgeInsets.only(top: 45.h, bottom: 0, right: 30.w, left: 30.w),
            child: Column(
              children: [
                const chartHeader(),
                SizedBox(height: 38.h),
                SizedBox(
                  width: double.infinity,
                  height: 80.40.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ChartSingleItem(
                          index: 0,
                          onTap: () {
                            controller.pageIndex.value = 0;
                          }),
                      ChartSingleItem(
                          index: 1,
                          text: "Contrat",
                          img: "c_img3",
                          onTap: () {
                            controller.pageIndex.value = 1;
                          }),
                      ChartSingleItem(
                        index: 2,
                        onTap: () {
                          controller.pageIndex.value = 2;
                        },
                        text: "Vogue",
                        img: "c_img4",
                      )
                    ],
                  ),
                ),
                SizedBox(height: 38.h),
                Obx(() => Expanded(
                      child: controller
                          .chartMainWidgetList[controller.pageIndex.value],
                    )),
                SizedBox(height: 10.h),
                if (isFromHomePage == true) ...{
                  BackScreen(controller: homeController!),
                  SizedBox(height: 10.h)
                }
              ],
            )),
      ),
    );
  }
}
