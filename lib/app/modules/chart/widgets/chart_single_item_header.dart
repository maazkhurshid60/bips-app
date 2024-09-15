import 'package:bips_app/app/modules/chart/controller/chart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChartSingleItem extends GetView<ChartController> {
  final String? img;
  final int? index;
  final String? text;
  final Function()? onTap;
  const ChartSingleItem({
    super.key,
    this.img,
    this.text,
    this.index,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => GestureDetector(
            onTap: onTap,
            child: Container(
              width: 104.82.w,
              height: 53.94.h,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: controller.pageIndex.value == index
                    ? const Color(0x49D9D9D9)
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.02,
                      color: controller.pageIndex.value == index
                          ? const Color(0xFFCBA95C)
                          : Colors.transparent),
                  borderRadius: BorderRadius.circular(15.27),
                ),
              ),
              child: Image.asset("assets/images/${img ?? "c_img2"}.png"),
            ),
          ),
        ),
        const Spacer(),
        Text(
          text ?? 'Commentaire',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11.19.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w300,
            height: 0,
          ),
        ),
      ],
    );
  }
}
