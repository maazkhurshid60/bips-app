import 'package:bips_app/app/modules/statistic/controller/statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Page3 extends GetView<StatisticsController> {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Structure',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Obx(() {
          if (controller.maisonindex.value == 1) {
            return GestureDetector(
                onTap: () => controller.maisonindex.value = 0,
                child: const StatesPageThreeBox());
          }
          return Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () => controller.maisonindex.value = 1,
                      child: const StatesPageThreeBox()),
                  SizedBox(height: 10.h),
                  const StatesPageThreeBox(title: "Meuble"),
                  SizedBox(height: 10.h),
                  const StatesPageThreeBox(title: "Vaisselle", haveline: false),
                  SizedBox(height: 10.h),
                  const StatesPageThreeBox(title: "Vêtement", haveline: false),
                ],
              ),
            ),
          );
        }),
        SizedBox(height: 10.h),
        Obx(
          () => controller.maisonindex.value == 1
              ? const SizedBox.shrink()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (v) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: v == 2 ? 2.5 : 5));
                  }),
                ),
        ),
      ],
    );
  }
}

class StatesPageThreeBox extends StatelessWidget {
  final String? title;
  final bool? haveline;
  const StatesPageThreeBox({super.key, this.title, this.haveline});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 397.w,
        height: 140.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          shadows: const [
            BoxShadow(
              color: Color(0x0F4F5588),
              blurRadius: 30,
              offset: Offset(0, 8),
              spreadRadius: 0,
            )
          ],
        ),
        child: haveline != null
            ? Padding(
                padding: const EdgeInsets.all(12).h,
                child: Text(title ?? 'Maison',
                    style: TextStyle(color: Colors.black, fontSize: 16.sp)),
              )
            : Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(15).h,
                    alignment: Alignment.topLeft,
                    child: Text(title ?? 'Maison',
                        style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                  )),
                  VerticalDivider(
                      color: Colors.black.withOpacity(0.20),
                      endIndent: 10,
                      indent: 20),
                  Expanded(child: Container()),
                  VerticalDivider(
                      color: Colors.black.withOpacity(0.20),
                      endIndent: 10,
                      indent: 20),
                  Expanded(child: Container()),
                ],
              ));
  }
}
