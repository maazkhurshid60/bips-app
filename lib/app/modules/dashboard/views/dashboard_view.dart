import 'package:bips_app/app/constants/app_text_style.dart';
import 'package:bips_app/app/modules/dashboard/views/bonos_view.dart';
import 'package:bips_app/app/modules/dashboard/views/cashprice_view.dart';
import 'package:bips_app/app/modules/dashboard/views/credibility_view.dart';
import 'package:bips_app/app/modules/dashboard/views/home_view.dart';
import 'package:bips_app/app/modules/dashboard/views/location_view.dart';
import 'package:bips_app/app/modules/dashboard/views/more_option_view.dart';
import 'package:bips_app/app/modules/dashboard/views/notification_view.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:bips_app/app/modules/dashboard/views/switcher_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Obx(() {
            if (controller.activePage.value == 1) {
              return const Expanded(child: SearchView());
            } else if (controller.activePage.value == 2) {
              return const Expanded(child: NotifcationView());
            } else if (controller.activePage.value == 3) {
              return const Expanded(child: BonosView());
            } else if (controller.activePage.value == 4) {
              return const Expanded(child: CashPriceView());
            } else if (controller.activePage.value == 5) {
              return const Expanded(child: LocationView());
            } else if (controller.activePage.value == 6) {
              return const Expanded(child: MoreOptionView());
            }else if (controller.activePage.value == 7) {
              return const Expanded(child: SwitcherView());
            }else if (controller.activePage.value == 8) {
              return const Expanded(child: CredibilityView());
            }  else {
              return const Expanded(child: HomeView());
            }
          }),

          // -----------custom bottom sheets ------------
          Container(
            height: 70.h,
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            width: double.infinity,
            
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
 
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: BottomItem()),
                Expanded(
                    child: BottomItem(
                  imagePath: "folder",
                  label: "Commandes",
                )),
                Expanded(
                    child: BottomItem(
                  imagePath: "chart",
                  label: "Buro",
                )),
                Expanded(
                    child: BottomItem(
                  imagePath: "messages",
                  label: "Messageria",
                )),
                Expanded(
                    child: BottomItem(
                  imagePath: "user",
                  label: "Aya",
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({super.key, this.imagePath, this.label});
  final String? imagePath;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/${imagePath ?? "home"}.png",
            height: 25.h, width: 25.w),
        Text(label ?? "Accueil",
            style: label == null
                ? AppTextStyle.smallbold
                : AppTextStyle.otherTextStyle.copyWith(fontSize: 10.sp))
      ],
    );
  }
}
