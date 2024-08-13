import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
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
import 'package:get/get.dart';

class HomeSubViewss extends GetView<DashboardController> {
  const HomeSubViewss({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
     if (controller.activePage.value == 1) {
        return const SearchView();
      } else if (controller.activePage.value == 2) {
        return const NotifcationView();
      } else if (controller.activePage.value == 3) {
        return const BonosView();
      } else if (controller.activePage.value == 4) {
        return const CashPriceView();
      } else if (controller.activePage.value == 5) {
        return const LocationView();
      } else if (controller.activePage.value == 6) {
        return const MoreOptionView();
      } else if (controller.activePage.value == 7) {
        return const SwitcherView();
      } else if (controller.activePage.value == 8) {
        return const CredibilityView();
      } else {
        return const HomeView();
      }
    });
  }
}
