import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/Accounts/contrtoller/account_controller.dart';
import 'package:bips_app/app/modules/Cashprice/controller/cash_price_controller.dart';
import 'package:bips_app/app/modules/Cashprice/views/totoal_bil.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CashMainPriceView extends GetView<CashPriceController> {
  const CashMainPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Obx(
        () => controller.tabIndex.value == 2
            ? const TotalBillCashprice()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBox(
                            index: 0,
                            ontap: () {
                              controller.tabIndex.value = 0;
                            }),
                        SizedBox(width: 100.w),
                        TabBox(
                          index: 1,
                          ontap: () {
                            controller.tabIndex.value = 1;
                          },
                          text: "Visa Carte",
                        )
                      ],
                    ),
                    SizedBox(height: 38.h),
                    Expanded(
                        child: Obx(
                      () => Column(
                        children: [
                          if (controller.tabIndex.value == 0) ...{
                            const TxtField(),
                            SizedBox(height: 15.h),
                            const TxtField(text: "Numéro de téléphone"),
                            SizedBox(height: 15.h),
                            const TxtField(text: "Mot de passe"),
                          } else ...{
                            const TxtField(text: "Nom et Prénom"),
                            SizedBox(height: 15.h),
                            const TxtField(text: "Numéro de la carte"),
                            SizedBox(height: 15.h),
                            const TxtField(text: "Date d’expération"),
                            SizedBox(height: 15.h),
                            const TxtField(text: "Code"),
                          },
                          SizedBox(height: 115.h),
                          GestureDetector(
                            onTap: () {
                              controller.tabIndex.value = 2;
                            },
                            child: Container(
                              width: 163.h,
                              height: 31.w,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.44),
                                ),
                              ),
                              child: const Text(
                                'Valider',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.25,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    GestureDetector(
                      onTap: () {
                        Get.find<AccountController>().isCashPriceView.value =
                            false;
                      },
                      child: Container(
                        height: 32.h,
                        width: 33.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.golden,
                        ),
                        child:
                            Icon(Icons.clear, color: Colors.white, size: 20.h),
                      ),
                    ),
                    SizedBox(height: 10.h)
                  ],
                ),
              ),
      )),
    );
  }
}

class TabBox extends GetView<CashPriceController> {
  final String? text;
  final int? index;
  final Function()? ontap;
  const TabBox({super.key, this.index, this.ontap, this.text});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: ontap,
        child: Container(
          height: 49.h,
          width: 100.w,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: const Color(0x49D9D9D9),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.02,
                  color: index == controller.tabIndex.value
                      ? AppColors.golden
                      : Colors.white),
              borderRadius: BorderRadius.circular(12.21),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 6,
                offset: Offset(0, 3),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x16000000),
                blurRadius: 11,
                offset: Offset(0, 11),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 14,
                offset: Offset(0, 24),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x02000000),
                blurRadius: 17,
                offset: Offset(0, 43),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x00000000),
                blurRadius: 19,
                offset: Offset(0, 66),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            text ?? 'Mobile Money',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10.18.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

class TxtField extends StatelessWidget {
  final String? text;
  const TxtField({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 5.h),
      height: 40.h,
      width: 350.w,
      decoration: BoxDecoration(
          color: const Color(0x14444444),
          borderRadius: BorderRadius.circular(16.r)),
      // width: double.infinity,
      child: Row(
        children: [
          Text(
            text ?? 'Nom et Prénom',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10.18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w100,
              height: 0,
            ),
          ),
          const Expanded(
              child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w100,
                    height: 0,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none))))
        ],
      ),
    );
  }
}
