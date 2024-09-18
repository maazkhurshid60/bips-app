import 'package:bips_app/app/modules/Accounts/views/account_main_view.dart';
import 'package:bips_app/app/modules/Accounts/views/agenda_view.dart';
import 'package:bips_app/app/modules/Accounts/views/competence_view.dart';
import 'package:bips_app/app/modules/Accounts/widgets/item_3.dart';
import 'package:bips_app/app/modules/Accounts/widgets/prix.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  RxInt pageIndex = 0.obs;
  List<Widget> screenItem = [
    const PrixView(c: Color(0xffBFBFBF), index: 0),
    const PrixView(index: 1),
    const Item3(index: 2)
  ];
  List<Widget> tabsItem = [
    const AgendaView(),
    const PageTwo(),
    const CompetenceView(),
  ];
}
