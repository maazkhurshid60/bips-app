import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/dashboard/views/notification_view.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BonosView extends GetView<DashboardController> {
  const BonosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10.0).h,
            child: SizedBox(
              child: Column(
                children: [
                  Image.asset("assets/images/box.png", height: 50.h),
                  Text("Bono",style: AppTextStyle.largebold),
                ],
              )),
          ),
          const NotifcationRow(t1: "M",t2: "Marie. K/ vaiselle",t3: "offre 10% de bonô sur ses services",t4:"09:25"),
          BackScreen(controller: controller)
        ],
      ),
    );
  }
}