import 'package:bips_app/app/modules/dashboard/views/home_view.dart';
import 'package:bips_app/app/modules/dashboard/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // -----------dashbboard main section start-----------
  RxInt activePage = 0.obs;
  // -----------dashbboard main section end-------------
  // -----------Home main section start-----------------
  // -----------Home main section end-------------------
  // -----------Search main section start---------------
  // -----------Search main section end-----------------
  static const List<String> months = [
    "Jan"
  ];
  // -----------Notification main section start---------
  // -----------Notification main section end-----------
}

List<Widget> screen= [
  const HomeView(),
  const SearchView()
];