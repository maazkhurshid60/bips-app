import 'package:bips_app/app/modules/chart/views/chart_main_view.dart';
import 'package:bips_app/app/modules/chart/views/commertire_widget.dart';
import 'package:bips_app/app/modules/chart/views/contrat_view.dart';
import 'package:bips_app/app/modules/chart/views/vogue_view.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_page_view.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_page_view_item_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChartController extends GetxController {
  RxInt pageIndex = 0.obs;

  List<Widget> chartPageViewItem = [
    ChartPageViewItemOne(),
    CharPageViewItemTwo()
  ];

  List<Widget> chartMainWidgetList = [
    CommertireWidget(),
    ContratWidget(),
    VegueView()
  ];
}
