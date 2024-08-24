import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/home_sub_view.dart';
import 'package:bips_app/app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Obx(
          () => CustomCurvedNavigationBar(
            buttonBackgroundColor: Colors.white,
            color: Colors.black,
            backgroundColor: Colors.transparent,
            index: controller.activeBottomIndex.value,
            items: <Widget>[
              SvgPicture.asset("assets/svgs/1.svg",
                  color: controller.activeBottomIndex.value == 0
                      ? null
                      : Colors.white,
                  height: 18.h),
              Image.asset("assets/images/chart.png",
                  color: controller.activeBottomIndex.value == 1
                      ? null
                      : Colors.white,
                  height: 18.h),
              SvgPicture.asset("assets/svgs/dn3.svg",
                  color: controller.activeBottomIndex.value == 2
                      ? null
                      : Colors.white,
                  height: 18.h),
              SvgPicture.asset("assets/svgs/dn4.svg",
                  color: controller.activeBottomIndex.value == 3
                      ? null
                      : Colors.white,
                  height: 18.h),
              SvgPicture.asset("assets/svgs/dn5.svg",
                  color: controller.activeBottomIndex.value == 4
                      ? null
                      : Colors.white,
                  height: 18.h),
            ],
            onTap: (index) {
              controller.activeBottomIndex.value = index;
            },
          ),
        ),
        body: const HomeSubViewss());
  }
}
