import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/widgets/custom_pager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      onPageChanged: (value) {
        controller.customHomePage.value = value;
      },
      itemBuilder: (context, index) {
        return CustomPager(imge: controller.imgage[index]);
      },
    );
  }
}
