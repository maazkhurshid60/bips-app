import 'package:bips_app/app/modules/home/views/charts_view.dart';
import 'package:bips_app/app/modules/home/views/home_sub_view.dart';
import 'package:bips_app/app/modules/home/views/message_search_view.dart';
import 'package:bips_app/app/modules/home/views/message_view.dart';
import 'package:bips_app/app/modules/home/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // -----------dashbboard main section start-----------

  RxInt activeBottomIndex = 2.obs;
  // -----------dashbboard main section end-------------
  // -----------Home main section start-----------------
  // -----------Home main section end-------------------
  // -----------Search main section start---------------
  // -----------Search main section end-----------------
  static const List<String> months = ["Jan"];
  // -----------Notification main section start---------
  // -----------Notification main section end-----------
  // -----------cashprice main section start---------
  RxInt cashpriceCurrentIndex = 0.obs;
  // -----------cashprice main section end-----------

  void changeCurrentScreen(int value) {
    activeBottomIndex.value = value;
    update();
  }

  List<Widget> screen = [
    const ChartsView(),
    const MessageSearchView(),
    const HomeSubViewss(),
    const MessageView(),
    const ProfileView(),
  ].obs;
}
