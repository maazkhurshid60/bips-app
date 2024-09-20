import 'package:bips_app/app/constants/app_colors.dart';
import 'package:bips_app/app/modules/Cashprice/controller/cash_price_controller.dart';
import 'package:bips_app/app/modules/chart/widgets/chart_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class item1text extends StatelessWidget {
  final String? text1;
  final String? text2;
  const item1text({
    super.key,
    this.text1,
    this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: text1 ?? 'Service commandé - 032',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
            TextSpan(
              text: text2 ?? '                                 2000',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalBillCashprice extends GetView<CashPriceController> {
  const TotalBillCashprice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                '05 juin, 2024',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 60.w,
                alignment: Alignment.center,
                height: 20.h,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Text(
                  "Martine. O",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 9.sp),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              width: double.infinity,
              height: 433.53,
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                  color: const Color(0x4CD9D9D9),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  const item1text(),
                  SizedBox(height: 40.h),
                  const item1text(
                    text1: "Iri’S Ass - 075",
                    text2:
                        "                                                        100",
                  ),
                  SizedBox(height: 40.h),
                  const item1text(
                      text1: "Bôno - 065",
                      text2:
                          "                                                              100"),
                  SizedBox(height: 40.h),
                  const item1text(
                      text1: "Frais d’exploitation - 055",
                      text2: "                                      100"),
                  SizedBox(height: 40.h),
                  Container(
                    width: 299.20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.02,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  const item1text(
                    text1: " ",
                    text2:
                        "Montant Total                                                    2300",
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 194.38.w,
                    height: 30.53.h,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.44),
                      ),
                    ),
                    child: const Text(
                      'Commande',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                controller.tabIndex.value = 0;
              },
              child: Container(
                height: 32.h,
                width: 33.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.golden,
                ),
                child: Icon(Icons.clear, color: Colors.white, size: 20.h),
              ),
            ),
            SizedBox(height: 20.h)
          ],
        ),
      )),
    );
  }
}
