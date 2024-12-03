import 'package:bips_app/app/modules/Accounts/contrtoller/account_controller.dart';
import 'package:bips_app/app/modules/Accounts/widgets/account_single_item.dart';
import 'package:bips_app/app/modules/Cashprice/views/cash_price_main_view.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountsMainView extends GetView<AccountController> {
  final bool? isFromHomePage;
  final HomeController? homeController;
  const AccountsMainView({super.key, this.homeController, this.isFromHomePage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Obx(
        () => controller.isCashPriceView.value
            ? const CashMainPriceView()
            : Stack(
                children: [
                  if (controller.pageIndex.value == 1)
                    Container(
                      width: 445.w,
                      height: 264.h,
                      decoration: const ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.89, -0.45),
                          end: Alignment(-0.89, 0.45),
                          colors: [
                            Color(0xff969696),
                            Colors.white,
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(33),
                            bottomRight: Radius.circular(33),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Icon(Icons.location_on, size: 35.h)),
                        Center(
                          child: Text(
                            '4 km',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.25.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0.5,
                            ),
                          ),
                        ),
                        const ChartHeader(),
                        SizedBox(height: 20.h),
                        if (isFromHomePage != true)
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: SizedBox(
                              width: double.infinity,
                              height: 80.40.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AccountSingleItem(
                                      index: 0,
                                      onTap: () {
                                        controller.pageIndex.value = 0;
                                      }),
                                  AccountSingleItem(
                                      index: 1,
                                      text: "Prix",
                                      img: "ac_img2",
                                      onTap: () {
                                        Get.find<StatisticsController>()
                                            .isfromaccount = true;
                                        controller.pageIndex.value = 1;
                                      }),
                                  AccountSingleItem(
                                    index: 2,
                                    onTap: () {
                                      controller.pageIndex.value = 2;
                                    },
                                    text: "Compétence",
                                    img: "ac_img3",
                                  )
                                ],
                              ),
                            ),
                          ),
                        if (controller.pageIndex.value == 1) ...{
                          SizedBox(height: 5.h),
                        } else ...{
                          SizedBox(height: 38.h),
                        },
                        Expanded(
                            child: Obx(() => controller
                                .tabsItem[controller.pageIndex.value])),
                        SizedBox(height: 10.h),
                        if (isFromHomePage == true) ...{
                          Center(
                              child: BackScreen(controller: homeController!)),
                        } else ...{
                          Center(
                              child: BackScreen1(
                                  controller: Get.find<DashboardController>()))
                        },
                        SizedBox(height: 10.h)
                      ],
                    ),
                  ),
                ],
              ),
      )),
    );
  }
}

class PageTwo extends GetView<StatisticsController> {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return controller.statisticPages[index];
          },
        ));
  }
}
