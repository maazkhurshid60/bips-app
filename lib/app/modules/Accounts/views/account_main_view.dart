import 'package:bips_app/app/modules/Accounts/contrtoller/account_controller.dart';
import 'package:bips_app/app/modules/Accounts/widgets/account_single_item.dart';
import 'package:bips_app/app/modules/Accounts/widgets/feature.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:bips_app/app/modules/home/controllers/home_controller.dart';
import 'package:bips_app/app/modules/home/views/search_view.dart';
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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Icon(Icons.location_on, size: 35.h)),
            Text(
              '4 km',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.25.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.5,
              ),
            ),
            const chartHeader(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                width: double.infinity,
                height: 80.40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            SizedBox(height: 38.h),
            Container(
              width: 50.w,
              alignment: Alignment.center,
              height: 20.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Text(
                "Tâche",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 9.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          if (index % 2 == 0) {
                            return const account_competence_feature();
                          } else {
                            return const account_competence_feature(
                                isRight: true);
                          }
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 3.h);
                        },
                        itemCount: 15))),
            SizedBox(height: 10.h),
            if (isFromHomePage == true) ...{
              Center(child: BackScreen(controller: homeController!)),
              SizedBox(height: 10.h)
            }
          ],
        ),
      )),
    );
  }
}
