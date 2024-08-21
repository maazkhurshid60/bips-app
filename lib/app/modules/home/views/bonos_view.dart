import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/notification_view.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BonosView extends GetView<HomeController> {
  const BonosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 10.w, right: 10.h, top: 10.h, bottom: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0).h,
            child: SizedBox(
                child: Column(
              children: [
                SizedBox(height: 30.h),
                Image.asset("assets/images/box.png", height: 40.h),
                Text("Bonô",
                    style: AppTextStyle.otherTextStyle.copyWith(
                        fontSize: 20.sp, fontWeight: FontWeight.bold)),
              ],
            )),
          ),
          const NotifcationRow(
              t1: "M",
              t2: "Marie. K/ vaiselle",
              t3: "offre 10% de bonô sur ses services",
              t4: "09:25"),
          BackScreen(controller: controller)
        ],
      ),
    );
  }
}
