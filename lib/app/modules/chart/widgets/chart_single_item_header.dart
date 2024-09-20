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
              decoration: ShapeDecoration(
                color: const Color(0x2BBFBFBF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.02,
                      color: controller.pageIndex.value == index
                          ? const Color(0xFFCBA95C)
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
                    blurRadius: 10,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 14,
                    offset: Offset(0, 23),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x02000000),
                    blurRadius: 17,
                    offset: Offset(0, 42),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x00000000),
                    blurRadius: 18,
                    offset: Offset(0, 65),
                    spreadRadius: 0,
                  )
                ],
              ),
              alignment: Alignment.center,
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
